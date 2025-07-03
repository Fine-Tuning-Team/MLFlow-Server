FROM python:3.10-slim-bullseye
RUN pip install --no-cache mlflow
EXPOSE 5000
CMD ["mlflow", "server", "--host", "0.0.0.0", "--port", "5000"]
