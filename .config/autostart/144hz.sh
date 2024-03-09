#!/usr/bin/env bash

logger "144hz script started."
xrandr --output DP-0 --mode 1920x1080 --rate 144.00 | logger
 