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
[ ! -x "$(which dialog)"  ] && sudo apt install dialog 1> /dev/null 2>&1

# ------------------------------------------------------------------------------------#

# --------------------------------------Functions----------------------------------------------#

ListUsers() {
	egrep -v "^#|^$" "$DATA_BASE_FILE" | tr : ' ' > "$TEMP"
	dialog --title "List of Users" --textbox "$TEMP" 20 40
	rm -f "$TEMP"
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













