#!/usr/bin/env python3

import RPi.GPIO as GPIO
import time

#GPIO initialization
GPIO.setmode(GPIO.BOARD)
GPIO.setwarnings(False)

PIN = 16
#Initialize your pin
GPIO.setup(PIN,GPIO.OUT)

while True:
  GPIO.output(PIN, 1)
  #time.sleep(5)
  GPIO.output(PIN, 0)
  #time.sleep(5)
