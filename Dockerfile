FROM resin/rpi-buildstep-armv6hf:latest

RUN apt-get update
RUN sudo apt-get install -y mono-runtime

ADD . /app

CMD ["mono","/app/hello.exe"]
