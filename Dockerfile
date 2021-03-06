FROM python:3.7-alpine
MAINTAINER YI-CHENG

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app
RUN apk add --no-cache git

RUN adduser -D user
USER user
