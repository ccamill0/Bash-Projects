#!/bin/bash

# Verifica se o prefixo é fornecido
if [ -z "$1" ]; then
    echo "Uso: $0 <prefixo>"
    exit 1
fi

PREFIX=$1

# Renomeia todos os arquivos no diretório atual com o prefixo fornecido
for FILE in *; do
    if [ -f "$FILE" ]; then
        mv "$FILE" "${PREFIX}_${FILE}"
    fi
done

echo "Arquivos renomeados com o prefixo $PREFIX"

