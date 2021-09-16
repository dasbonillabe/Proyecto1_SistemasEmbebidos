#!/bin/bash
echo 23 > /sys/class/gpio/unexport
echo 23 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio23/direction

while true
do
	echo 1 > /sys/class/gpio/gpio23/value
	#sleep 5
	echo 0 > /sys/class/gpio/gpio23/value
	#sleep 5
done

#echo 23 > /sys/class/gpio/unexport
