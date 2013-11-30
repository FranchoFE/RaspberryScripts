#!/bin/bash

logFile=~/.contestador.log  
echo `date` " " $* >> $logFile
case $1 in
	espacio)
		echo "El sistema tiene libre `df -h | grep rootfs | awk '{ print $4,$5 }'`"
	;;
	hola)
		echo "Hola. Como estas?"
	;;
	top)
		echo "`ps -e -o pcpu,state,args --sort pcpu | tail -n 5`" 
	;;
	buenos)
		if [ $2 = dias ]; then
			echo "`clima.sh`"
		else
			echo "\"$*\" no lo entiendo"
		fi	
	;;	
	*)
		echo "\"$*\" no lo entiendo"
;;
esac
