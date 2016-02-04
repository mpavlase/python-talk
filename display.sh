#!/bin/bash

RES=1280x960

xrandr --output LVDS1 --mode $RES
xrandr --output VGA1 --mode $RES
