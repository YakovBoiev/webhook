import time
from datetime import datetime
from airflow.decorators import dag, task
import json
import requests
import os
import shutil
from airflow.providers.postgres.operators.postgres import PostgresOperator

TEMP_DIR_PATH = '/tmp/webhook/'
TARGET_URL = 'https://www.webhook.site'
NUMBERS_TASKS = 3
DATABASE_NAME = 'postgres'
TABLE_NAME = 'webhook'
SQL_PATH = f"sql/webhook.sql"


def get_data(url):
    response = requests.get(url)
    return dict(response.headers)


def delete_dir(path):
    shutil.rmtree(path)


def create_dir(path):
    if os.path.exists(path):
        delete_dir(path)
    os.mkdir(path)


def write_json(data, num_file):
    data_json = json.dumps(data)
    with open(f'{TEMP_DIR_PATH}data_{num_file}.ndjson', 'a') as f:
        f.write(data_json + '\n')


def check_count_files(folder, count):
    file_list = os.listdir(folder)
    return len(file_list) == count


def sql_query():
    start_sql = f"""
                CREATE TABLE IF NOT EXISTS {TABLE_NAME} (
                Webhook_id SERIAL PRIMARY KEY,
                Cache_Control VARCHAR,
                Content_Encoding VARCHAR,
                Content_Type VARCHAR,
                Date VARCHAR,
                Server VARCHAR,
                Set_Cookie VARCHAR,
                Transfer_Encoding VARCHAR,
                Vary VARCHAR
                );
              """
    json_files = os.listdir(TEMP_DIR_PATH)
    with open(f"dags/{SQL_PATH}", 'w') as sql_file:
        for file in json_files:
            with open(f"{TEMP_DIR_PATH}{file}", 'r') as f:
                data = json.load(f)
                keys = list(data.keys())
                column = ", ".join(list(map(lambda x: x.replace('-', '_'), keys)))
                values = ", ".join(list(map(lambda x: "E'" + x + "'", [data.get(key) for key in keys])))
                start_sql = start_sql + f"""
                       INSERT INTO {TABLE_NAME} ({column})
                       VALUES ({values});
                           """

        sql_file.write(start_sql)
    return start_sql


@dag(
    dag_id='webhook_import_export',
    schedule=None,
    start_date=datetime(2023, 8, 10),
    catchup=False,
    tags=["example"],
)
def webhook_import_export():
    @task()
    def create_tmp_dir():
        create_dir(TEMP_DIR_PATH)

    @task()
    def extract(task_num):
        response_data = get_data(TARGET_URL)
        write_json(response_data, task_num)
        response_data.clear()

    @task()
    def check():
        if not check_count_files(TEMP_DIR_PATH, NUMBERS_TASKS):
            raise ValueError('Extract tasks filed')

    @task
    def query():
        query = sql_query()

    create_pet_table = PostgresOperator(
        task_id="load",
        postgres_conn_id='postgres_default',
        sql='sql/webhook.sql',
    )

    extract_tasks = [extract(num_task) for num_task in range(1, NUMBERS_TASKS + 1)]
    check_task = check()
    create_tmp_dir = create_tmp_dir()
    create_tmp_dir >> extract_tasks >> check_task >> query() >> create_pet_table


webhook_import_export()
