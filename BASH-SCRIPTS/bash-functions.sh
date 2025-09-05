#!/usr/bin/env bash
# 
## Basic Structure
#funtion_name() {
# command
#}

# Parameters
mimic() {
    echo "First parameter: $1"
    echo "Second parameter: $2"
}

# call the function with two parameters
mimic 1 2 

# call it again with different parameters
mimic 99 100

# Add function
# No return value, so must echo
add() {
    num1=$1
    num2=$2
    result=$((num1 + num2))
    echo $result
}

# will echo three
add 1 2

# Capture output of function
# will not echo 14 because now I'm capturing it
output=$(add 5 9)
#echo $output

# I can run the output I captured through another function
add $output $output