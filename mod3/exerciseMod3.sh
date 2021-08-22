#!/usr/bin/env bash
#
# exploreModules - Explore modules from path
#
# Site:          https://url.com
# Autor:         Marcos Guillermo
# Maintenance:   Marcos Guillermo
# 
# ------------------------------------------------------------------------------------#
# Esse programa deve acessar os módulos realizados no curso e realizar um cat
# em cada um deles
#
# Exemples:
#	$./usersLists.sh -s -m
#	In this exemple, the list will be alphabetized and uppercase(respectively).
# ------------------------------------------------------------------------------------#
# Change log:
# 
#
#  v1.0 22/08/2021, Marcos Guillermo;
#  - Added -h, -s, -v, -m, -n
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
#  - Added 3 flags
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

MODULE="$(cat shell-master-lectures/mod1/loopExercise.sh )"
USER_MESSENGER="
   $(basename $0) - [OPTIONS]

	-h - Help Menu
	-v - Version
	-s - Module 1
	-m - Module 2
	-n - Module 3
"
VERSION="1.0v"
ORDER1_KEY=0
ORDER2_KEY=0
ORDER3_KEY=0
# ------------------------------------------------------------------------------------#
#
# --------------------------------------Tests----------------------------------------------#
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
while test -n "$1"
do
	case "$1" in
		-h) echo "$USER_MESSENGER" && exit 0               ;;
		-v) echo "$VERSION" && exit 0                      ;;
		-s) ORDER1_KEY=1                                   ;;
		-m) ORDER2_KEY=1                                   ;;
		-n) ORDER3_KEY=1                                   ;;
		 *) echo "Invalid Option, use -h option" && exit 1 ;;
	esac
	shift
done

[ $ORDER1_KEY -eq 1 ] && MODULE=$(cat shell-master-lectures/mod1/ifExercise.sh)

[ $ORDER2_KEY -eq 1 ] && MODULE=$(cat shell-master-lectures/mod2/exerciseMod2.sh)

[ $ORDER3_KEY -eq 1 ] && MODULE=$(cat shell-master-lectures/mod3/$0.sh)

echo "$MODULE"
# ------------------------------------------------------------------------------------#


