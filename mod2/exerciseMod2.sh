#!/usr/bin/env bash
#
# exerciseMod2.sh - Simple exercise of mod2
#
# Site:          https://udemy.com
# Autor:         Marcos Guillermo
# Maintenance:   Marcos Guillermo
# 
# ------------------------------------------------------------------------------------#
# This is the description of program
#
# Exemples:
#	$./exerciseMod2.sh -d 1
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
  START=0; #COMECA
  END=100; #TERMINA
# ------------------------------------------------------------------------------------#
#
# --------------------------------------Tests----------------------------------------------
  [ $START -ge $END ] && exit 1; #Compare variable leght 

# ------------------------------------------------------------------------------------#
#
# --------------------------------------Functions----------------------------------------------#
#
#
#
# ------------------------------------------------------------------------------------#
#
# --------------------------------------Execution----------------------------------------------#
  for i in $(seq $START $END); #Loop 0 at 100
  do
    for j in $(seq $i $END); #Loop i at 0, inverse loop
	 do
      printf "*";i
	 done;
    printf "\n"
  done;
# ------------------------------------------------------------------------------------#
#









#

3
#

