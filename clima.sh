#!/bin/bash

wget "http://xml.weather.yahoo.com/forecastrss?w=774508&u=c" -O weather.dat
cadena1=$(echo La temperatura actual en Sevilla es de $(grep 'yweather:condition' weather.dat | head -1 | cut -d\" -f6) grados.)
cadena2=$(echo La temperatura minima de hoy va a ser de $(grep 'yweather:forecast' weather.dat | head -1 | cut -d\" -f6) y la maxima de $(grep 'yweather:forecast' weather.dat | head -1 | cut -d\" -f8) grados) 

echo "Buenos dias Francho"
echo $cadena1
echo $cadena2
