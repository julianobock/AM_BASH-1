#!/bin/bash
#
# Exemplo de uso do comando "case"
# Exemplo de como um script deve ser documentado
#
# Escrito por Diego Tumelero para a disciplina de Shell Script



principal() {           # Função principal do programa
    clear               # limpa a tela

    echo "[1] Laranja"  # imprime na tela as opções que serão
    echo "[2] Martelo"  # abordadas no comando case
    echo "[3] Sair"
    echo
    echo -n "Qual a opcao desejada ? "
    read opcao          # faz a leitura da variável "opcao", 
                        # que será utilizada no comando case
                        # para indicar qual a opção a ser utilizada

                        # caso o valor da variável "opcao"...
    case $opcao in
        1)              # seja igual a "1", então faça as instruções abaixo
            clear
            laranja     # executa os comandos da função "laranja"

            ;;          # os 2 ";;" (ponto e virgula)
                        # significam que chegou ao final
                        # esta opção do comando case
        2)
            clear
            martelo ;;  # usa a função martelo e finaliza a opção do case com ";;"
        3)
            clear
            exit ;;
        *)              # esta opçao existe para caso o usuário digite um 
                        # valor diferente de 1, 2 ou 3
            opcao_invalida ;;
    esac
}

laranja() {             # função da opção laranja
    echo "Laranja"
    read pause          # usado para pausar a execução do script
    principal           # volta para a função principal
}

martelo() {             # função da opção martelo
    clear
    echo "Martelo"
    read pause
    principal
}

opcao_invalida() {      # função da opção inválida
    clear
    echo "Opcao desconhecida."
    read pause
    principal
}

principal               # o script começa aqui, as funções das linhas anteriores
                        # são lidas pelo interpretador bash e armazenadas em memória.

                        # o bash não tem como adivinhar qual das funções ele deve 
                        # executar, por isto o a execução do script realmente começa
                        # quando aparece uma instrução fora de uma função, neste caso,
                        # chamando a função principal