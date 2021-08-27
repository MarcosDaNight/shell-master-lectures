#!/usr/bin/env bash
#
# notasLoac.sh  - Verificar a pontuação da disciplina por terminal
#
#
# Site:          http://lad.ufcg.edu.br/loac/uploads/OAC/anon.txt
# Autor:         Marcos Guillermo
# Maintenance:   Marcos Guillermo
# 
# ------------------------------------------------------------------------------------#
# Esse Programa irá extrair a quantidade de centavos através do ID repassado e exibirá
# na tela
#
# Exemples:
#	$./notasLoac.sh $ID
#	Nesse exemplo, o usuário irá executar o programa e repassar o paramêtro $1 respectivo
#  ao ID que o mesmo quer exibir com sua quantidade total de centavos
# ------------------------------------------------------------------------------------#
# Historic/Change log:
# 
#
# 	v1.0 18/08/2021, Marcos Guillermo:
#	   - Programa recebe o ID e exibe na tela mostrando o total de centavos
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
CENTAVOS=0
#
#
# ------------------------------------------------------------------------------------#
#
# --------------------------------------Tests----------------------------------------------
[ ! -x "$(which curl)" ] && sudo apt install curl -y #Verifica se curl foi já existe
#
#
# ------------------------------------------------------------------------------------#
#
# --------------------------------------Functions----------------------------------------------#
#
#
# ------------------------------------------------------------------------------------#
# 10 até 12/13
# --------------------------------------Execution----------------------------------------------#
set +x
curl -O http://lad.ufcg.edu.br/loac/uploads/OAC/anon.txt
grep "^$1" anon.txt > nota.txt
grep $1 anon.txt > teste.txt
#grep "^$1" nota.txt | awk '{print $3}'


set -x
echo $CENTAVOS
# ------------------------------------------------------------------------------------#
#

