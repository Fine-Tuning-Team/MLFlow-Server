FROM python:3.10-slim-bullseye
RUN pip install --no-cache mlflow
CMD ["mlflow", "server", "--host 0.0.0.0", "--port 5000"]
