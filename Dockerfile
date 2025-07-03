FROM python:3.10-slim-bullseye
RUN pip install --no-cache mlflow
RUN pip install --no-cache psycopg2-binary
EXPOSE 5000
RUN useradd -u 10014 appuser
USER 10014
ENTRYPOINT ["mlflow", "server", "--host", "0.0.0.0", "--port", "5000", "--backend-store-uri", "postgresql+psycopg2://${user}:${password}@${HOST}:5000/${database}"]
