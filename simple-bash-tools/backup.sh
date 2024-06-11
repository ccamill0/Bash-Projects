#!/bin/bash

# Verifica se o diretório de backup é fornecido
if [ -z "$1" ]; then
    echo "Uso: $0 <diretorio_backup>"
    exit 1
fi

BACKUP_DIR=$1

# Cria o diretório de backup se não existir
mkdir -p "$BACKUP_DIR"

# Copia os arquivos e diretórios especificados para o diretório de backup
cp -r ~/Documentos/* "$BACKUP_DIR"

echo "Backup concluído em $BACKUP_DIR"

