FROM resin/rpi-raspbian:wheezy

RUN apt-get update
RUN apt-get install -y mono-runtime

ADD . /App

CMR ["mono", "App/hello.exe"]
