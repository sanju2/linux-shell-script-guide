#!/bin/bash

# Function structure:
# function function_name() {
#   your logic here
# }

function greeting(){
    set -x
    echo "Hi there " $1
    set +x
}

greeting Maka