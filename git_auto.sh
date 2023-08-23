#!/bin/bash
########################################################################################
# Arquivo para automatizar : git commit, git add, git push                             #
#									                                                   #	
# Nome: git_auto.sh							                                           #
#									                                                   #
# Autor: José Ivan G da Silva (ivan.geraldo@gmail.com)	                               #
# Data: 05/07/2023							                                           #
#									                                                   #
# Descrição: Ao terminar a fase do projeto executar na pasta raiz do diretorio,        #
# Será executado a adição, o comitt com o comentario da data da alteração,horas e      #
# minutos                                                                              #
# Ao copiar na sua pasta raiz é necessario autorizar a execução: 			           #
# chmod +x git_auto.sh                                                                 #
# Uso: ./git_auto.sh 						                                           #
########################################################################################
NOW=$(date +'%d/%m/%Y %H:%M:%S')
#add arquivo
git add .  ## prepara a adção de arquivos no repositório
sleep 3  ##tempo de espera

# add comentarios
git commit -m "$NOW" ## commit com o comentario de data atual e hora padrão
sleep 3  ##tempo de espera
git push ##Publica no repositorio
sleep 3  ##tempo de espera
git status  ##só exibe o status se correu tudo bem