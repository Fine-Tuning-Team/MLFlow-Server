FROM python:3.10-slim-bullseye
RUN pip install --no-cache mlflow
RUN pip install --no-cache psycopg2-binary
EXPOSE 5000
RUN useradd -u 10014 appuser
USER 10014
ENTRYPOINT ["sh", "-c", "mlflow server \
    --host $MLFLOW_HOST \
    --port $MLFLOW_PORT \
    --backend-store-uri postgresql+psycopg2://$DB_USER:$DB_PASSWORD@$DB_HOST:$DB_PORT/$DB_NAME"]
