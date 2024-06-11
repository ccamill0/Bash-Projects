#!/bin/bash

DOWNLOADS_DIR=~/Downloads

# Cria diretórios de organização
mkdir -p "$DOWNLOADS_DIR/Imagens" "$DOWNLOADS_DIR/Documentos" "$DOWNLOADS_DIR/Executaveis"

# Move arquivos baseados em suas extensões
mv "$DOWNLOADS_DIR"/*.jpg "$DOWNLOADS_DIR/Imagens" 2>/dev/null
mv "$DOWNLOADS_DIR"/*.png "$DOWNLOADS_DIR/Imagens" 2>/dev/null
mv "$DOWNLOADS_DIR"/*.pdf "$DOWNLOADS_DIR/Documentos" 2>/dev/null
mv "$DOWNLOADS_DIR"/*.docx "$DOWNLOADS_DIR/Documentos" 2>/dev/null
mv "$DOWNLOADS_DIR"/*.exe "$DOWNLOADS_DIR/Executaveis" 2>/dev/null
mv "$DOWNLOADS_DIR"/*.sh "$DOWNLOADS_DIR/Executaveis" 2>/dev/null

echo "Organização concluída."

