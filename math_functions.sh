#!/bin/bash

retrieve_sum(){
    echo $(($1 + $2));
}

retrieve_diff(){
    echo $(($1 - $2));
}

retrieve_product(){
    echo $(($1 * $2));
}

retrieve_quotient(){
    echo $(($1 / $2));
}

echo "Do you want to add (a), subtract (s), multiply (m) , or divide (d)?"
read mathInput
echo "Please enter the first number."
read firstNum
echo "Please enter the second number."
read secondNum

if [[ $mathInput == "a" ]]; then
    retrieve_sum $firstNum $secondNum
elif [[ $mathInput == "s" ]]; then
    retrieve_diff $firstNum $secondNum
elif [[ $mathInput == "m" ]]; then
    retrieve_product $firstNum $secondNum
elif [[ $mathInput == "d" ]]; then
    retrieve_quotient $firstNum $secondNum
else
        echo "Please enter a valid parameter"
fi
