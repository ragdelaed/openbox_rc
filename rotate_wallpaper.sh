#! /bin/bash 
WALLPAPERS="/home/ragdelaed/Pictures/wallpapers"
ALIST=( `ls -w1 $WALLPAPERS|egrep -i "jpg|png"` )
RANGE=${#ALIST[@]}
let "number = $RANDOM"
let LASTNUM="`cat $WALLPAPERS/.last` + $number"
let "number = $LASTNUM % $RANGE"
echo $number > $WALLPAPERS/.last
nitrogen --set-scaled --save $WALLPAPERS/${ALIST[$number]}
