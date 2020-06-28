FROM python:3.7-slim

MAINTAINER Luvpreet Singh "s.luvpreet33@gmail.com"

WORKDIR /app

COPY requirements.txt ./

RUN pip install -r requirements.txt

EXPOSE 5000
