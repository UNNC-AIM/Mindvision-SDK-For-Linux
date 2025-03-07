#!/bin/bash

CURDIR=`pwd`
echo "Your current directory is $CURDIR. This is where the MVSDK software will be installed..."
A=`whoami`
B=`arch`

if [ "$A" != 'root' ]; then
   echo "You have to be root to run this script"
   echo "Fail !!!"
   exit 1;
fi


cp 88-mvusb.rules /etc/udev/rules.d/
cp 99-mvusb.rules /etc/udev/rules.d/

cp include/* /usr/include/
echo "Copy header files"

cp lib/x64/libMVSDK.so /lib
echo "Copy x64/libMVSDK.so to /lib"

echo "Successful"
echo "Please  restart system  now!!!"
