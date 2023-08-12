from datetime import datetime
from airflow.decorators import dag, task
import json
import requests

TEMP_DIR_PATH = '/tmp/webhook/'
TARGET_URL = 'https://www.webhook.site'


@dag(
    dag_id='webhook_import_export',
    schedule=None,
    start_date=datetime(2023, 8, 10),
    catchup=False,
    tags=["example"],
)
def extract():
    def get_data(url):
        response = requests.get(url)
        return dict(response.headers)

    @task()
    def write_json(data):
        data_json = json.dumps(data)
        with open(f'{TEMP_DIR_PATH}data.ndjson', 'a') as f:
            f.write(data_json + '\n')

    data = get_data(TARGET_URL)
    write_json(data)


extract()
