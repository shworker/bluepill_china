#!/bin/bash -x
PROJECT=bluepill_midi_monster
IMAGE=/home/dmitry/eclipse-workspace/$PROJECT/Debug/$PROJECT.hex
echo -e "reset halt\r\nflash write_image erase $IMAGE\r\nreset\r\nexit\r\n" | nc localhost 4444

#killall openocd

