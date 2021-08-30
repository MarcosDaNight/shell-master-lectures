#!/usr/bin/env bash
#
# 	Matheus Müller - Taught me UNIX commands and awakened my knowledge of DevOps.
# 	Jonatas Ferreira - Introduced me to what would be DevOps
# ------------------------------------------------------------------------------------#
#
#
#--------------------------------------Variables----------------------------------------------#
FILE_CONFIG="config.cf"
USE_COLORS=
USE_UPPERCASE=
MESSENGER="Test Messenger"

GREEN="\033[32;1m"
RED="\044[31;1m"
# ------------------------------------------------------------------------------------#
#
#
# --------------------------------------Tests----------------------------------------------#
 [ ! -r  "$FILE_CONFIG" ] && echo "No file reed acess" && exit 1
#------------------------------------------------------------------------------------#

# --------------------------------------Functions----------------------------------------------#
defineParameters () {
	local parameter="$(echo $1 | cut -d = -f 1)"
	local value="$(echo $1 | cut -d = -f 2)"

	case "$parameter" in
		USE_COLORS)   USE_COLORS=$value     ;;
		USE_UPPERCASE) USE_UPPERCASE=$value ;;
	esac
}
#
# ------------------------------------------------------------------------------------#
#
# --------------------------------------Execution----------------------------------------------#
while read -r line
do
	[ "$(echo $line | cut -c1)" = "#" ] && continue
	[ ! "$line" ] && continue
	defineParameters "$line"
done < "$FILE_CONFIG"

[ "$USE_UPPERCASE" -eq 1 ] && MESSENGER="$(echo -e $MESSENGER | tr [a-z] [A-Z])"
[ "$USE_COLORS" -eq 1 ] && MESSENGER="$(echo -e ${GREEN}$MESSENGER)"

echo "$MESSENGER"
# ------------------------------------------------------------------------------------#
#

