FROM python:3.10-slim-bullseye
RUN pip install --no-cache mlflow
EXPOSE 5000
RUN useradd -u 10014 appuser
USER 10014
CMD ["mlflow", "server", "--host", "0.0.0.0", "--port", "5000", "--backend-store-uri", "postgresql+psycopg2://<username>:<password>@<host>:<port>/<database>"]
