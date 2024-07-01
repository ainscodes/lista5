#!/bin/bash
if [[ "$1" == "--date" ]] || [[ "$1" == "-d" ]]; then
echo "dzisiejsza data: $(date)"
fi
echo "ok"
if  [[ "$1" == "--logs" ]] || [ "$1" == "-l" ]]; then
for i in {1..100}; do
echo "numer pliku: $i, utworzony przez skrypt.sh, $(date)" > log_$i.txt
done
fi
if  [[ "$1" == "--logs[0-9]" ]] || [[ "$1" == "-l[0-9" ]]; then
for i in $(seq 1 "$1"); do
echo "numer pliku: $i utworzony przez skrypt.sh dnia $(date)"
done
else
echo "flaga nieznana"
fi
if [[ "$1" == "--help" ]]; then
echo "opcje"
echo " --date i -d wyświetla dzisiejszą datę"
echo "--logs - -l tworzy 100 plików log_X.txt gdzie X to numer pliku"
echo "--logsX i -lX tworzy X plików j/w "
