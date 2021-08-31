#!/usr/bin/env bash
#
# programName.sb - Description of program
#
# Site:          https://url.com
# Autor:         Marcos Guillermo
# Maintenance:   Marcos Guillermo
# 
# ------------------------------------------------------------------------------------#
# This program will have the description based on an Api 
#
# Exemples:
#	$./Header.sh -d 1
#	In this example the script will be run in debug mode level 1
# ------------------------------------------------------------------------------------#
# Historic/Change log:
# 
#
# 	v1.0 18/08/2021, Autor of change:
#	   - What has changed?
#	v1.1 19/09/2021, Autor of change:
#	   - What has changed?
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
DATA_BASE_FILE="data_base.txt"

GREEN="\033[32;1m"
RED="\033[31;1m"
# ------------------------------------------------------------------------------------#
#
# --------------------------------------Tests-------------------------------------------- 
[ ! -e "$DATA_BASE_FILE" ] && echo "ERROR. File does exist"                    && exit 1
[ ! -r "$DATA_BASE_FILE" ] && echo "ERROR. File don't have a read permisson"   && exit 1
[ ! -w "$DATA_BASE_FILE" ] && echo "ERROR. File don't have writing permission" && exit 1


# ------------------------------------------------------------------------------------#

# --------------------------------------Functions----------------------------------------------#

ShowUsersOnScreen() {
	local id="$(echo $1 | cut -d : -f 1)"	
 	local name="$(echo $1 | cut -d : -f 2)"
	local email="$(echo $1 | cut -d : -f 3)"

	echo -e "${GREEN}Id: ${RED}$id"
	echo -e "${GREEN}Name: ${RED}$name"
	echo -e "${GREEN}Email: ${RED}$email"
}

ListUsers() {
	while read -r line
	do
		[ "$(echo $line | cut -c1)" = "#" ] && continue
		[ ! "$line" ]                       && continue
	
		ShowUsersOnScreen "$line"		
	done < "$DATA_BASE_FILE"
}



# ------------------------------------------------------------------------------------#
#
# --------------------------------------Execution----------------------------------------------#
#
#
#
# ------------------------------------------------------------------------------------#
#














