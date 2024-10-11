#!/bin/bash

# Define o diretório atual
current_dir=$(pwd)

# Cria o diretório do Dia 1 no diretório atual
mkdir -p "$current_dir/Day1"

# Navega para o diretório do Dia 1
cd "$current_dir/Day1"

# Cria e ativa um ambiente virtual
python3 -m venv chatbot_env
source chatbot_env/bin/activate

# Atualiza o pip e instala as dependências
pip install --upgrade pip
pip install chainlit ngrok langchain optimum auto-gptq --extra-index-url https://huggingface.github.io/autogptq-index/whl/cu118/ -q

echo "Ambiente do Dia 1 configurado com sucesso!"