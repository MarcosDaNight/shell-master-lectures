#!/usr/bin/env bash

find / -iname "*.so" -user ubunto18 -type f -size +1M -exec ls {} \;


find / -iname "*.so" \
		 -user ubunto18 \
		 -type f         \
		 -size +1M        \
		 -exec ls {}       \;

