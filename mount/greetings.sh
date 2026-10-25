#!/bin/bash

set -euo pipefail


handle_interrupt(){

echo "interrupt received"

}

handle_cleanup(){

echo "handling cleanup"
sleep 10
rm log.txt

}

NAME=${1:-"Ashutosh"}


trap handle_cleanup EXIT

trap handle_interrupt INT

touch log.txt

echo "Hi! My name is $NAME, Welcome to my journey"

echo "Printed welcome message" > log.txt

echo "I am on a learning journey"

echo "added a line" >> log.txt

echo "I will definitely learn and grow"

echo "added another line" >> log.txt
