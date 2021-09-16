#!/bin/bash
# Autor: Santiago Bonilla
# Sistemas Embebidos - Proyecto 01

var=0
while true
do
   temperature=`cat /sys/bus/w1/devices/28-3c01e076c7cc/temperature`
   echo `date +%Y%m%d\ %H%M%S`';'$temperature >> /home/pi/Documents/Proyecto1/Punto2/`date +%Y%m%d`_TEMPERATURA.csv
   var=`echo "$var+1" | bc -l`
   echo "Iteracion numero: " $var
   sleep  10
done

