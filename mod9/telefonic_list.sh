#!/usr/bin/env bash
#
# telefonicList.sh - Description of program
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
DATA_BASE_FILE="tel_list.txt"

SEP=:
TEMP=temp.$$
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
	local id="$(echo $1 | cut -d $SEP -f 1)"	
 	local name="$(echo $1 | cut -d $SEP -f 2)"
	local number="$(echo $1 | cut -d $SEP -f 3)"

	echo -e "${GREEN}Id: ${RED}$id"
	echo -e "${GREEN}Name: ${RED}$name"
	echo -e "${GREEN}Phone Number: ${RED}$email"
}

ListUsers() {
	while read -r line
	do
		[ "$(echo $line | cut -c1)" = "#" ] && continue
		[ ! "$line" ]                       && continue
	
		ShowUsersOnScreen "$line"		
	done < "$DATA_BASE_FILE"
}

UserExistsValidate() {
	grep -i -q "1$SEP" "$DATA_BASE_FILE"
}

InsertUser() {
	local name="echo $1 | cut -d $SEP -f 2"
	
	if UsersExistValidate "$name"
	then
		echo "ERROR. User already exists" 
	else
		echo "$*" >> "$DATA_BASE_FILE"
		echo "User sucessful registred"
	fi
	ListOrder
}

DeleteUser() {
	UserExistsValidate "$1" || return

	grep -i -v "1$SEP" "$DATA_BASE_FILE" > "$TEMP"
	mv "$TEMP" "$DATA_BASE_FILE"

	echo "User sucessful deleted"
	ListOrder
}

ListOrder() {
	sort "$DATA_BASE_FILE" > "$TEMP"
	mv "$TEMP" "$DATA_BASE_FILE"

}


# ------------------------------------------------------------------------------------#
#
# --------------------------------------Execution----------------------------------------------#
#
#
#
# ------------------------------------------------------------------------------------#
#














