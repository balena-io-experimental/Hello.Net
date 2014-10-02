FROM resin/rpi-buildstep-armv6hf:latest

RUN apt-get update
RUN apt-get -y install git autoconf libtool g++ gettext make mono-complete

RUN git clone git://github.com/mono/mono.git /mono
WORKDIR /mono
RUN ./autogen.sh --prefix=/usr/local
RUN make && make install

ADD . /app

RUN msc /app/hello.cs
CMD ["mono","/app/hello.exe"]
