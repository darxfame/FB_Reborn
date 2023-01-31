#!/usr/bin/env bash

	for file in /tmp/*.csv; do 
	 if [ -f $HOME/klipper_config/shaper_png/shaper_${file#/tmp/}.png ]
	 then
	        echo "shaper_${file#/tmp/}.png is already processed"
	 else     
	  ~/klipper/scripts/calibrate_shaper.py /tmp/${file#/tmp/} -o $HOME/klipper_config/shaper_png/shaper_${file#/tmp/}.png
         fi
        done
	exit 0


