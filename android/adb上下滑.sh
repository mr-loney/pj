#!/bin/sh

reverse="1"
while true
  do
  # if [[ $reverse = "1" ]]; then
    adb shell input swipe 700 700 100 100
    reverse="0"
  # else
  #   adb shell input swipe 100 100 700 700
  #   reverse="1"
  #   fi
    sleep 0.01
  done 