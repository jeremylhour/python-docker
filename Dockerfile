FROM python:3.10.0-slim-buster

WORKDIR /project

RUN apt-get -y update
RUN apt-get -y install Rscript

RUN git clone https://github.com/jeremylhour/pensynth
RUN pip install -r pensynth/incremental_algo_puresynth/requirements.txt

RUN cd pensynth/data/
RUN Rscript downloadLalondeData.R

RUN cd ../incremental_algo_puresynth/
RUN python3 main.py


