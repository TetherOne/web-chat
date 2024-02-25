FROM python:3.11.4-slim

RUN mkdir /web-chat

WORKDIR /web-chat

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

