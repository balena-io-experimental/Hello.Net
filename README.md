# A barebones resin.io project to demonstrate running .NET using C# code

## Usage

This is a [resin.io](http://resin.io) application. Clone it, push
it to your resin endpoint and you're good to go!

## Parts

The recipe for this project is as follows:

* Raspberry Pi with ethernet cable for internet connectivity and
  USB -> micro USB cable for power.
* A C# executable program (source file included)

### Resin.io Setup & Deployment

1. If you haven't got a resin.io alpha account, visit [alpha.resin.io](http://alpha.resin.io) and sign up.
1. start a new applicaton on resin.io, name it as you want, download the .zip file and extract it to your SD card. 
1. Insert the SD card into the Rasoberry pi, connect the ethernet cable and power it up using the micro-usb cable.
1. After about 10 minutes your new device should show up on the resin.io applications dashboard.
1. Setup an empty application. 

1. you can now clone down the hello.NET folder:

`$ git clone https://github.com/nghiant2710/hello.NET.git`

then add the resin remote: (replacing <myUserName> and <myApplicationName> with yours from the resin.io dashboard)

`$ git remote add resin git@git.staging.resin.io:<myUserName>/<myApplicationName>.git`

and finally push the code to your raspberry pi:

`$ git push resin master`



