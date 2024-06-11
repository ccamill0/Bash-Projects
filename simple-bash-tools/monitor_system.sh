#!/bin/bash

# Coleta a utilização da CPU
CPU_USAGE=$(top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}')

# Coleta a utilização da memória
MEM_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')

# Coleta a utilização do disco
DISK_USAGE=$(df -h | grep '/$' | awk '{print $5}')

# Gera o relatório
echo "Relatório de Utilização do Sistema:"
echo "CPU: $CPU_USAGE%"
echo "Memória: $MEM_USAGE%"
echo "Disco: $DISK_USAGE"

