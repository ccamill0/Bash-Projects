#!/bin/bash

# Lista de sites para verificar
SITES=("google.com" "github.com" "stackoverflow.com")

echo "Verificando conectividade de rede..."

for SITE in "${SITES[@]}"; do
    if ping -c 1 "$SITE" &> /dev/null; then
        echo "$SITE está acessível"
    else
        echo "$SITE não está acessível"
    fi
done

