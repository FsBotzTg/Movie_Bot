#Python Based Docker

FROM python:3.10.8-slim-buster

#Installing Packages

RUN apt update

RUN apt upgrade -y

RUN apt install git curl python3-pip ffmpeg -y

#Updating Pip Packages

RUN pip3 install -U pip

#Copying Requirements

COPY requirements.txt /requirements.txt

#Installing Requirements

RUN cd /

RUN pip3 install -Ur requirements.txt

RUN mkdir /Movie_Bot

WORKDIR /Movie_Bot

RUN git clone https://github.com/FsBotzTg/Movie_Bot /Movie_Bot

COPY start.sh /start.sh

#Running Bot

CMD [/bin/bash", "/start.sh"]
