#!/usr/bin/env bash


VAR=""
VAR2=""

if [[ "$VAR" = "$VAR2" ]]; then
	echo "Variables are equals. 0"
fi

if [[ "$VAR" = "$VAR2" ]]; 
then
        echo "Variables are equals. 1"
fi

if test "$VAR" = "$VAR2"
then
	echo "Variables are equals. 2"
fi

if [ "$VAR" = "$VAR2" ]
then
        echo "Variables are equals. 3"
fi

[ "$VAR" = "$VAR2" ] && echo "Variables are equals. Best conditional way"
[ "$VAR" = "$VAR2" ] || echo "Variables are equals. Best conditional way"



