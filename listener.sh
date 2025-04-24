#!/bin/bash

stty -F /dev/ttyACM0 9600
tail -f /dev/ttyACM0 | while read line ; do
  if test $line = "Movement detected" ; then
    ffmpeg -f video4linux2 -i /dev/video0 -vframes 1 -y out.jpg # Take a picture if movement detected
    # Then send it to a database here.
    printf '\x01' > /dev/ttyACM0 # Toggle standby state off in the Arduino so it keeps detecting movement
  fi
done
