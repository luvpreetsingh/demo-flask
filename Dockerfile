FROM python:3.7-slim

MAINTAINER Luvpreet Singh "s.luvpreet33@gmail.com"

WORKDIR /app

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY ./ ./

EXPOSE 5000

ENTRYPOINT ["gunicorn", "--bind=0.0.0.0:5000", "wsgi"]
