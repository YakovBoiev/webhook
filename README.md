# 
git clone https://github.com/YakovBoiev/webhook.git

cd webhook

mkdir -p ./dags ./logs ./plugins ./config

echo -e "AIRFLOW_UID=$(id -u)" > .env

docker compose up airflow-init

docker compose up

open http://0.0.0.0:8080/

    Login 	         airflow
    
    Password 	 airflow
    
cp -r src/sql dags

cp  src/webhook_import_export.py dags 

find webhook_import_export dag in Airflow

in Admin >> Variable set WEBHOOK_NUMBERS_TASKS - 4 (or necessary number tasks)

in Admin >> Connection set connection:

    Connection Id  	 postgres_default
    
    Connection Type  Postgres
    
    Host             webhook-postgres-1
    
    Schema 	         airflow
    
    Login 	         airflow
    
    Password 	 airflow
    
    Port             5432

trigger dag

sudo docker exec -it webhook-postgres-1 /bin/bash

psql -U airflow airflow

select * from airflow.webhook;






