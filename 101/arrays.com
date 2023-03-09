#!/bin/bash

# First array!

my_array=("value 1" "value 2" "value 3")

echo ${my_array[0]}
echo ${my_array[1]}

echo ${my_array[-1]}

#get all values
echo ${my_array[@]}