#!/usr/bin/env bash

# This is a bash list/array
declare -a array=("apple" "pear" "cherry")

## Now loop through the above array
for i in "${array[@]}"
do
    echo "This ${i} is delicious!!!"
done
