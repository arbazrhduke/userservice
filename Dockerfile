FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
RUN mkdir /usermgmt
WORKDIR /usermgmt
COPY ./usermgmt /usermgmt

RUN adduser -D user
USER user
