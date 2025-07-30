#!/bin/bash

# Script to add a new user in Linux

read -p "Enter the username to add: " username

if id "$username" &>/dev/null; then
    echo "User '$username' already exists."
else
    sudo useradd "$username"
    echo "User '$username' created successfully."
    sudo passwd "$username"
fi
