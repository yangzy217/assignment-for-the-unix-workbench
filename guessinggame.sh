#!/usr/bin/env bash
# File: gussinggame.sh

# As the assignment requires, I make the following function, though I think there is no need to make a function.
function print_read {
  echo $1
  read guess
}
#filnum stores the number of file in the current directory.
filnum=$(ls | wc -l)
#Ask user to guess how many files in the current directory and the get the input.
print_read "guess how many files in the current directory"
#While the user's guess is not correct, then check and respond whether it's too high or too low.
while [[ $guess -ne $filnum ]]
do
  if [[ $guess -gt $filnum ]]
  then
    print_read "too high, guess again"
  else
    print_read "too low, guess again"
  fi
done
#When the user's guess is correct, then output congratulation.
  echo "Congratulation!"
