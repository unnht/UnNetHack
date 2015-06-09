#!/bin/bash -e

ulimit -c unlimited # dump core

DIR=/home/a/unnethack/var/unnethack

rm -f $DIR/level_info.txt $DIR/core $DIR/?lock.*

for i in {1..100000}
do
	export NETHACKOPTIONS=role:wiz,race:elf,gender:female,seed:$i
	nice -20 /home/a/unnethack/bin/unnethack
done

