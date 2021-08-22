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
# 	v1.0 22/08/2021, Marcos Guillermo:
#  - 
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
"
VERSION="1.0v"
# ------------------------------------------------------------------------------------#
#
# --------------------------------------Tests----------------------------------------------
#
#
#
# ------------------------------------------------------------------------------------#
#
# --------------------------------------Functions----------------------------------------------#
#
#
# ------------------------------------------------------------------------------------#
#
# --------------------------------------Execution----------------------------------------------#
if [ "$1" = "-h" ]; then
	echo "$USER_MESSENGER" && exit 0
fi

if [ "$1" = "-v" ]; then
	echo "$VERSION" && exit 0
fi

if [ "$1" = "-s" ]; then
	echo "$USERS" | sort && exit 0
fi

# ------------------------------------------------------------------------------------#


