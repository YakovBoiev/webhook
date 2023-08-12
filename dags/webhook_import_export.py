from datetime import datetime
from airflow.decorators import dag, task
import json
import requests
import os
import shutil

TEMP_DIR_PATH = '/tmp/webhook/'
TARGET_URL = 'https://www.webhook.site'
NUMBERS_TASKS = 3


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
    with open(f'{TEMP_DIR_PATH}data.ndjson_{num_file}', 'a') as f:
        f.write(data_json + '\n')


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


webhook_import_export()
