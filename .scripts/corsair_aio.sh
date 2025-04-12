#!/bin/bash
# Script used to set the Corsair AIO pump and fans mode.
# Fan speeds are taken from iCUE default presets. 

node="Corsair Hydro"

while getopts m: flag
do
	case "${flag}" in
		m) mode=${OPTARG};;
	esac
done

if [[ $mode = "quiet" ]];
then
	liquidctl --match "$node" initialize --pump-mode balanced &
	liquidctl --match "$node" set fan speed 32 20 33 30 34 38 36 50 38 72 40 85 42 100 &
elif [[ $mode = "balanced" ]];
then
	liquidctl --match "$node" initialize --pump-mode balanced &
	liquidctl --match "$node" set fan speed 29 20 30 30 31 47 32 55 33 69 34 85 35 100 &
elif [[ $mode = "extreme" ]]; 
then
	liquidctl --match "$node" initialize --pump-mode extreme &
	liquidctl --match "$node" set fan speed 26 35 27 40 28 50 29 65 30 76 32 90 32 100 &
else 
	echo "usage"
	echo "aio -m <mode> (quiet, balanced, extreme)"
fi
tmp=$?
mkdir -p /var/log/corsair_aio/
echo "["$(date)"] status $tmp" >> /var/log/corsair_aio/last.log
