FROM resin/rpi-raspbian:wheezy

RUN apt-get update
RUN apt-get install -y mono-runtime

ADD . /App

RUN echo mono App/hello.exe >/start
RUN chmod +x /start
