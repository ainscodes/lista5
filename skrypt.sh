#!/bin/bash
if [[ "$1" == "--date" ]]; then
echo "dzisiejsza data: $(date)"
fi
echo "ok"
if  [[ "$1" == "--logs" ]]; then
for i in {1..100}; do
echo "numer pliku: $i, utworzony przez skrypt.sh, $(date)" > log_$i.txt
done
fi
if  [[ "$1" == "--logs[0-9]" ]]; then
for i in $(seq 1 "$1"); do
echo "numer pliku: $i utworzony przez skrypt.sh dnia $(date)"
done
else
echo "flaga nieznana"
fi

