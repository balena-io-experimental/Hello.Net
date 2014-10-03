FROM resin/rpi-buildstep-armv6hf:latest

RUN apt-get update
RUN sudo apt-get install -y mono-complete

ADD . /app

RUN msc /app/hello.cs
CMD ["mono","/app/hello.exe"]
