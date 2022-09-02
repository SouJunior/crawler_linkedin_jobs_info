cd ./services/web && docker-compose up -d

cd ../../
cd ./services/nginx && docker-compose up -d

cd ../../
cd ./services/airflow && docker-compose up -d
