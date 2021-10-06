# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /project

RUN apt-get -y update
RUN apt-get -y install git

RUN git clone https://github.com/jeremylhour/pensynth.git
RUN pip install -r pensynth/incremental_algo_puresynth/requirements.txt

COPY data/* pensynth/data/*


