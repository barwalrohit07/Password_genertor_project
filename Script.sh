#!/bin/bash

# Simple Password Generator
echo "Welcome to the simple password generator!"

sleep 2

# Prompt user for password length
echo "Please enter the length of the password:"
read PASS_LENGTH

# Validate user input
if ! [[ "$PASS_LENGTH" =~ ^[0-9]+$ ]] || [ "$PASS_LENGTH" -le 0 ]; then
    echo "Invalid input. Please enter a positive number."
    exit 1
fi

# Generate the password
PASSWORD=$(openssl rand -base64 48 | tr -d '\n' | cut -c1-$PASS_LENGTH)

# Display the password
echo "Generated password: $PASSWORD"
