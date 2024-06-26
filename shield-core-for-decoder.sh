#!/bin/bash
# Copyright 2024 Joseph Bondi VE3GKT

my_jt9=$(pgrep jt9) #get PID of jt9
echo "-- jt9 PID is:" $my_jt9 #status message

sudo cset shield -c 3 #shield CPU core 4 of 4
echo "-- Core shielded from normal threads"

sudo cset shield -k on #move the movable kernal threads out of shielded core
echo "-- Core shielded from movable kernal threads"

sudo cset shield -s -p "$my_jt9" #move jt9 onto shielded core
echo "-- jt9 moved to shielded core... Done!"

sleep 5
