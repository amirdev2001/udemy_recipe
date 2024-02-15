FROM python:3.7-alpine

ENV PYTHONUNUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app

# this is for security purposes
RUN adduser -D user 
USER user