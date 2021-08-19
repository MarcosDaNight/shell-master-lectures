#!/usr/bin/env bash

# Lynx installed?
[ ! -x "$(which lynx)" ] && printf "${AMARELO}Precisamos instalaro ${VERDE}Lynx${AMARELO}, por favor, digite sua senha:${SEM_COR}\n" && sudo apt install lynx

# No obrigatory parameters
[ -z $1 ] && printf "${VERMELHO}[ERROR] - Informe os parâmetros obrigatórios. Consulte a opção -h.\n" && exit 1
