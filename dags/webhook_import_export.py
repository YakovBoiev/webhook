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
    # os.sync()

@dag(
    dag_id='webhook_import_export',
    schedule=None,
    start_date=datetime(2023, 8, 10),
    catchup=False,
    tags=["example"],
)
def webhook_import_export():
    create_dir(TEMP_DIR_PATH)
    for num_task in range(1, NUMBERS_TASKS + 1):
        @task()
        def extract(task_num):
            response_data = get_data(TARGET_URL)
            write_json(response_data, task_num)
            response_data.clear()


        extract(num_task)

    @task()
    def check():
        time.sleep(1)
        file_list = os.listdir(TEMP_DIR_PATH)
        json_files = file_list
        if len(json_files) != NUMBERS_TASKS:
            print('*' * 100)
            print(len(json_files))
            raise ValueError('Extract task filed')

    check()

    create_pet_table = PostgresOperator(
        task_id="load",
        postgres_conn_id='postgres_default',
        sql=f"""
                CREATE TABLE IF NOT EXISTS {TABLE_NAME} (
                Webhook_id SERIAL PRIMARY KEY,
                Cache_Control VARCHAR,
                Content_Type VARCHAR,
                Date VARCHAR,
                Server VARCHAR,
                Set_Cookie VARCHAR,
                Transfer_Encoding VARCHAR,
                Vary VARCHAR
                );
              """,
    )



webhook_import_export()
