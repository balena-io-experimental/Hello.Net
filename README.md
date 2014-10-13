#Hello .NET in Resin.io

## Introduction

This application only installs mono-runtime that allows running .NET application on [Resin.io](http://resin.io).

If you want to install the complete version of Mono includes Mono runtime, develoment tools and all libraries to build and deploy .NET application directly on 
Raspberry Pi. You can change (view Dockerfile)

*RUN sudo apt-get install -y mono-runtime

Into

*RUN sudo apt-get install -y mono-complete

Then you can build and deploy your C# code on the Raspberry Pi.

## Parts

The recipe for this project is as follows:
* Raspberry Pi and USB -> micro USB cable for power.
* A C# executable program (source file included)

## Resin.io Setup & Deployment

1. If you haven't got a [Resin.io](http://resin.io) alpha account, visit [alpha.resin.io](http://alpha.resin.io) and sign up.
1. Start a new applicaton on [Resin.io](http://resin.io) download the .zip file, format your SD card in FAT32 and extract it to your SD card. 
1. Insert the SD card into the Raspberry Pi, power it up using the micro-usb cable and connect to the Internet.
1. After about 10 minutes your new device should show up on your application dashboard.
1. You can now clone the Hello.NET repo:

`$ git clone https://github.com/nghiant2710/hello.NET.git`

Then add the resin remote:

`$ git remote add resin git@git.staging.resin.io:<myUserName>/<myApplicationName>.git`

And finally push the code to your Raspberry Pi:

`$ git push resin master`