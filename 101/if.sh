#!/bin/bash

#bash if statement example

admin="sanju"

read -p "What is your username? " username

if [[ "${username}" == "${admin}" ]] ; then
    echo "You are the admin user"
else
    echo "You are not admin user"
fi