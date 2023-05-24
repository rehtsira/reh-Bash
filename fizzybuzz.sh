#!/bin/bash
# Write a program that prints the numbers from 1 to 100. But for multiples of three print "Fizz"
# instead of the number and for the multiples of five print "Buzz". For numbers which are multiples 
#of both three and five print "FizzBuzz".

for i in {1..100}; do
    if [[ $(( i % 3 )) -eq 0 && $(( i % 5 )) -eq 0 ]]; then
        echo "$i - FizzBuzz"
    elif [[ $(( i % 5 )) -eq 0 ]]; then
        echo "$i - Buzz - 5"
    elif [[ $(( i % 3 )) -eq 0 ]]; then
        echo "$i - Fizz - 3"
    fi
done
