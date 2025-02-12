#!/bin/bash
generate_password() {
    local password_length=$1
    password_length=${password_length:-16}
    password=$(tr </dev/urandom -dc 'A-Za-z0-9!@#$%^&*()-_=+[]{}<>?|~' | head -c "$password_length")
    echo "$password"
}
read -p "Enter the desired password length (default 16): " length
secure_password=$(generate_password "$length")
echo "Your secure password is: $secure_password"
