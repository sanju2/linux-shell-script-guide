#!/bin/bash

# for var in ${list}
# do 
#   command here
#done

users="sanju maka lasantha"

for user in $users
do
    echo "Hello there" ${user}
done