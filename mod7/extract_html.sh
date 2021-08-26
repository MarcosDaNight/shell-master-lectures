#!/usr/bin/env bash
#
# extract_html.sh - Extract titles from the blog
#
# Site:          https://4fasters.com.br
# Autor:         Marcos Guillermo
# Maintenance:   Marcos Guillermo
# 
# ------------------------------------------------------------------------------------#
# This program will have extract titles from blog LXER, put in a file text and reed 
# showing with colors in screen.
#
# Exemples:
#	$./extract_html.sh
#	In this example the script will be extract and show on screen.
# ------------------------------------------------------------------------------------#
# Historic/Change log:
# 
#
# 	v1.0 26/08/2021, Autor of change:
#	   - Implements the regular expression with comun factor
#	v1.1 26/09/2021, Autor of change:
#	   - Creating first code with colors
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
FILE_TITLES="titles.txt"

GREEN="\033[32;1m"
RED="\033[31;1m"
# ---------------------------------------------------------------------------------------------#
# --------------------------------------Tests--------------------------------------------------#
[ ! -x "$(which lynx)" ] && sudo apt install lynx -y #Lynx installed
#
#
# ------------------------------------------------------------------------------------#
#
# --------------------------------------Functions----------------------------------------------#

#
# ------------------------------------------------------------------------------------#
#
# --------------------------------------Execution----------------------------------------------#
lynx -source http://lxer.com/ | grep blurb | sed 's/<div.*line">//;s/<\/span.*//' > titles.txt

while read -r title_lxer
do
	echo -e "${RED}Title: ${GREEN}$title_lxer"
done < "$FILE_TITLES"

# ------------------------------------------------------------------------------------#
#


