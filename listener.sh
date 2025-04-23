#!/bin/bash

# A shell script that listens to Arduino broadcasting the state of the motion sensor
# For now it only receives ASCII "Hello\n" from the sketch provided, and processes each line by appendoing " World!"
# This is supposed to show the principle that we can process whatever Arduino transmits in a shell
# Next up is connecting this to a USB webcam through ffmpeg

stty -F /dev/ttyACM0 9600
tail -f /dev/ttyACM0 | while read line ; do echo $line World!  ; done