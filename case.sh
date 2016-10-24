#!/bin/bash

clear

Menu(){

   echo "------------------------------------------"
   echo "                LinuxAdmin                "
   echo "------------------------------------------"
   echo
   echo "[ 1 ] Opção 1"
   echo "[ 2 ] Alternativa 2"
   echo "[ 3 ] Sair"
   echo

   echo -n "Qual a opcao desejada ? "
   read opcao

   case $opcao in
      1) opcao1 ;;
      2) alternativa2 ;;
      5) exit ;;
      *) "Opcao desconhecida." ; echo ; Principal ;;
   esac
}

opcao1() {
	echo "opção 1"
}

alternativa2() {
	echo "alternativa 2"
}
