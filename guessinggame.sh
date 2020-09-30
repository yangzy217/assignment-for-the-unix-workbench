#!/usr/bin/env bash
# File: gussinggame.sh

function read_check {
  read guess
	while [[ "$guess" =~ [^0-9] ]]
	do
		echo "please input a number"
		read guess
	done
}
filnum=$(ls | wc -l)
echo "guess how many files in the current directory"
read_check
while [[ $guess -ne $filnum ]]
do
  if [[ $guess -gt $filnum ]]
  then
    echo "too high, guess again"
		read_check
  else
    echo "too low, guess again"
		read_check
  fi
done
  echo "Congratulation!"
