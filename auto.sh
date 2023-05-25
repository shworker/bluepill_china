#!/bin/bash

function check_openocd(){
    RES=`netstat -antl | grep :4444 | grep LISTEN | wc -l`
}

check_openocd
if [ $RES -eq 0 ] ; then
    ./openocd.sh && sleep 1
fi

./new_flash.sh && sleep 1 && ./killocd.sh


