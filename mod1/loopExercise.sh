#!/usr/bin/env bash

echo "Exercise Loop"
for (( i = 0; i <= 10; i++));
do

	[  $(($i % 2)) -eq 0  ] && echo "O número $i é divisível por 2"
done

