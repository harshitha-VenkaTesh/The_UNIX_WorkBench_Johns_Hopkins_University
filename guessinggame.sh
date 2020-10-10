#!/usr/bin/env bash

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Enter your guess"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "your guess is Less than the true number"
        elif [ $number -gt $true_ans ]
        then
            echo "your guess is Greater than the true number"
        else
            echo " Congratulation,you guess is right!"
        break;
        fi
    done
}
echo "guess the files number in the current directory!"
guess
