#!/usr/bin/env bash

FILE_CONFIG="$1"

[ ! -e "$FILE_CONFIG" ] && echo "ERROR. File does not exist" && exit 1
[ ! -r "$FILE_CONFIG" ] && echo "ERROR. No reed acess"       && exit 1


while read -r line
do
	[ "$(echo $line | cut -c1)" = "#" ] && continue  # If is comment, next
	[ ! "$line" ] && continue # If where blank line, next
	
	key="$(echo $line | cut -d = -f 1)"
	value="$(echo $line | cut -d = -f 2)"

	echo "CONF_$key=$value"
done < "$FILE_CONFIG"
