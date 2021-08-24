#!/usr/bin/env bash
#
# usersLists - Extract users from /etc/passwd
#
# Site:          https://url.com
# Autor:         Marcos Guillermo
# Maintenance:   Marcos Guillermo
# 
# ------------------------------------------------------------------------------------#
# This program will extract users from the /etc/passwd path, with the possibility to put
# in uppercase and alphabetical order
#
# Exemples:
#	$./usersLists.sh -s -m
#	In this exemple, the list will be alphabetized and uppercase(respectively).
# ------------------------------------------------------------------------------------#
# Change log:
# 
#
#  v1.0 22/08/2021, Marcos Guillermo;
#  - Added -s, -h & -v
#
#  v1.1 22/08/2021, Marcso Guillermo:
#  - Change IF per CASE
#  - Added basename
#
#  v1.2 22/08/2021, Marcos Guillermo:
#  - Added while with shift and variable test
#  - Added 2 flags
#
# 	v1.3 22/08/2021, Marcos Guillermo:
#  - Added while with shift and variable test
#  - Added 2 flags
#
# ------------------------------------------------------------------------------------#
# Test in:
# 	bash x.x.xx
# ------------------------------------------------------------------------------------#
# Acknowledgments:
#
# 	Matheus Müller - Taught me UNIX commands and awakened my knowledge of DevOps.
# 	Jonatas Ferreira - Introduced me to what would be DevOps
# ------------------------------------------------------------------------------------#
#
#
#--------------------------------------Variables----------------------------------------------#

USERS="$(cat /etc/passwd | cut -d : -f 1)"
USER_MESSENGER="
   $(basename $0) - [OPTIONS]

	-h - Help Menu
	-v - Version
	-s - Exit order
	-m - Exit uppercase
"
VERSION="1.3v"
ORDER_KEY=0
UPPERCASE_KEY=0
# ------------------------------------------------------------------------------------#
set -x
while test -n "$1"
do
	case "$1" in
		-h) echo "$USER_MESSENGER" && exit 0               ;;
		-v) echo "$VERSION" && exit 0                      ;;
		-s) ORDER_KEY=1                                    ;;
		-m) UPPERCASE_KEY=1                                ;;
		 *) echo "Invalid Option, use -h option" && exit 1 ;;
	esac
	shift
done

[ $ORDER_KEY -eq 1 ]     && USERS=$(echo "$USERS" | sort)

[ $UPPERCASE_KEY -eq 1 ] && USERS=$(echo "$USERS" | tr [a-z] [A-Z])

echo "$USERS"
set +x
# ------------------------------------------------------------------------------------#


