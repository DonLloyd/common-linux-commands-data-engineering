#!/usr/bin/env bash

# Rondomly generate a string of lines
echo "How many lines to you want?"
read LINES

declare -a array=("apple" "pear" "cherry")

COUNT=1
while [ $COUNT -le $LINES ]
do 
    rand=$[ $RANDOM %3 ]
    echo "$COUNT ${array[$rand]}" >> filter-file.txt
    ((COUNT++))
done