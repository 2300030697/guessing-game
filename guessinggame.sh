#!/bin/bash

# Function to get the number of files
function get_file_count {
  echo $(ls -1 | wc -l)
}

file_count=$(get_file_count)

echo "Welcome to the guessing game!"
echo "Guess how many files are in the current directory:"

while true; do
  read user_guess
  if [[ $user_guess -eq $file_count ]]; then
    echo "🎉 Congratulations! You guessed it right!"
    break
  elif [[ $user_guess -lt $file_count ]]; then
    echo "Too low. Try again:"
  else
    echo "Too high. Try again:"
  fi
done
