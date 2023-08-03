#!/bin/bash

read -p "Deseja instalar o zerotier [ SEM VERIFICAÇÃO GPG ]? (Pressione Enter ou digite 's' para sim, 'n' para não): " answer


if [[ "$answer" == "s" || -z "$answer" ]]; then
    # Instalando o zerotier no modo rápido [ SEM VERIFICAÇÃO GPG ]
    curl -s https://install.zerotier.com | sudo bash
    echo "Zerotier instalado - Iniciando ...!"
      service zerotier-one start
      read -p "Digite o ID da rede" id
      sudo zerotier-cli join $id
else
    echo "Instalação do Zerotier cancelada pelo usuário."
fi
