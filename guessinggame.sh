#!/usr/bin/env bash
# File: guessinggame.sh


let answ=$(find . -maxdepth 1 -type f | wc -l)
let guess=answ-1

while ((answ-guess != 0)) 
do
    echo "Enter your guess of how many files there are in this directory:"
    read guess
    if ((answ-guess == 0))
    then
        echo "It seems that we have a winner, you guessed correctly: $answ. Congratulations!"
    elif ((answ-guess < 0))
    then
        echo "that's not the answer: you are guessing to high!"
    else
        echo "that's not the answer: you are guessing to low!"
    fi
done

