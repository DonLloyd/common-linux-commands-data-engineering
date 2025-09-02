#!/usr/bin/env bash
## declare an array with three items
declare -a array=("apply" "pear" "cherry" "strawberry" "banana")

## now loop through our array
for i in "${array[@]}"
do
    echo "This ${i} is delicious!"
done