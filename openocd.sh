#!/bin/bash

ocdpid=`pidof openocd`

if [ ! -z "$ocdpid" ] ; then
	kill $ocdpid
	sleep 1
fi

openocd -f china_bluepill.cfg &


