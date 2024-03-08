#!/bin/bash

# Function to check if the guess is correct
check_guess() {
    local nbr_fichiers=$(ls -l | grep -v ^d | wc -l)
    if [[ $1 -eq $nbr_fichiers ]]; then
        echo "Congratulations! You guessed correctly."
        exit 0
    elif [[ $1 -lt $nbr_fichiers ]]; then
        echo "Too low! Try again."
    else
        echo "Too high! Try again."
    fi
}

while true; do
    read -p "Guess the number of files in the current directory: " guess
    check_guess "$guess"
done
