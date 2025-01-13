#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame(){
    no_of_files=$(pwd | ls | wc -l)
    while true;
    do
        echo "guess :))"
        read  number
        if [ $number -lt $no_of_files ]
        then
            echo "too less"
        elif [ $number -gt $no_of_files ]
        then
            echo "too high"
        else
            echo "BINGOO !! YOU WON"
        break;
        fi
    done
}

echo "Guess how many files are there in the current directory?"
guessinggame
