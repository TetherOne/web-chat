FROM python:3.11.4-slim

RUN mkdir /web-chat

WORKDIR /web-chat

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD gunicorn main:app --workers 3 --worker-class uvicorn.workers.UvicornWorker --bind=0.0.0.0:8000