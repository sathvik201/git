#!/usr/bin/env bash

# Function to count files in the current directory
count_files() {
  echo $(ls -1 | wc -l)
}

# Main program
echo "Welcome to the Guessing Game!"
files=$(count_files)

while true; do
  echo "How many files are in the current directory? Enter your guess:"
  read guess

  if [[ $guess -eq $files ]]; then
    echo "Congratulations! You guessed it right!"
    break
  elif [[ $guess -lt $files ]]; then
    echo "Your guess is too low. Try again!"
  else
    echo "Your guess is too high. Try again!"
  fi
done
