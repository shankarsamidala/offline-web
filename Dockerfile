FROM python:3.8.10

ENV PYTHONBUFFERED 1

RUN mkdir /offline-web

WORKDIR /offline-web

COPY . .

RUN apt-get update \
    && apt-get -y install libpq-dev gcc \
    && pip install psycopg2-binary \
    && pip install pillow

RUN pip install -r requirements.txt

EXPOSE 8000