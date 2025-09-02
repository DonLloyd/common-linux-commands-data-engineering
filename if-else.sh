#!/bin/sh
echo "What food do you choose? "
read FOOD

if [ "$FOOD" = "Apple" ]; then
    echo "Eat Yogurt with your " $FOOD
elif [ "$FOOD" = "Mile" ]; then
    echo "Eat Cereal with your " $FOOD
else
    echo "Eat your ${FOOD} by itself!"
fi