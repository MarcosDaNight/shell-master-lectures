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
#--------------------------------------Variables----------------------------------------------#
KEY_DEBUG=0
LEVEL_DEBUG=0

#--------------------------------------Functions----------------------------------------------#
Debugger () {
	[ $1 -le $LEVEL_DEBUG ] && echo "Debug $* ------"
}

Sum ()  {
	local total=0


	for i in $(seq 1 25);do
     Debugger 1 "Enter in loop with value: $i" 
	  total=$(($total+$i))
	  Debugger 2 "Before sum: $total"
	done

	echo $total
}
#---------------------------------------------------------------------------------------------#
#
#---------------------------------------------------------------------------------------------#
case "$1" in
	-d) [ $2 ] && LEVEL_DEBUG=$2 ;;
	 *) Sum                      ;;

esac

Sum
#---------------------------------------------------------------------------------------------#

