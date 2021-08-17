#!/usr/bin/env bash
NAME = "Marcos GDN"

echo $0

echo "Created By: $NAME"

NUMBER_1=46
NUMBER_2=74

TOTAL=$(($NUMBER_1+$NUMBER_2))

echo "$TOTAL"

EXIT_CAT="$(cat /etc/passwd | grep mateus)"

echo "$EXIT_CAT"

echo "-------------------------------------"

echo "Parameter 1: $1"
echo "Parameter 2: $2"

echo "All parameters: $*"

echo "Count of parameters: $#"

echo "Output last command: $?"

echo "PID: $$"


