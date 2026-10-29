#!/bin/bash

set -euo pipefail


handle_interrupt(){ 
  echo "interrupt received"
}

Info_log_writer(){
  echo "INFO [$(date '+%Y-%m-%d %H:%M:%S')] $1" >>log.txt
}


INPUT=${1:-"Ashutosh"}

trap handle_interrupt INT


if [ "$INPUT" == '--help' ]; then
  echo "Usage:"
  echo "If you want a custom message for you: bash greetings.sh your_name"
  echo "If you want the default name: bash greetings.sh"
  exit
fi


touch log.txt

Info_log_writer "Log file created"

echo "Hi! My name is $INPUT"

Info_log_writer "Printed introduction message"

echo "I am on a learning journey"

Info_log_writer "Printed what I am doing"

echo "I will definitely learn and grow"

Info_log_writer "Printed what I am postive and confident about"

echo "Thank you for listening to me."

Info_log_writer "Printed thank you message"

echo "Bye!"

exit 1
