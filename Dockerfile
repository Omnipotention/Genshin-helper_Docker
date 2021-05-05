FROM python:3-alpine3.13
MAINTAINER twinboy@me.com

RUN pip install genshinstats

WORKDIR /tmp

ENV LTUID ltuid
ENV LTOKEN ltoken

ADD ./main.py /tmp/main.py

ENTRYPOINT python3 /tmp/main.py
