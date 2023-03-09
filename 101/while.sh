#!/bin/bash

# while [ some-condition ]
# do
#   some commands
# done

echo "Enter your name: "
read name

while [[ -z ${name} ]] ; do
    echo "you need to enter your name!"
    read name
done

echo "Hello there $name"