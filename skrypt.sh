#!/bin/bash

if [ "$1" == "--date" ]; then
    echo $(date)
elif [ "$1" == "--logs" ]; then
    if [ -z "$2" ]; then
        num_logs=100
    else
        num_logs=$2
    fi
    
    for ((i=1; i<=$num_logs; i++)); do
        filename="log${i}.txt"
        echo "Nazwa pliku: $filename" > $filename
        echo "Nazwa skryptu: $0" >> $filename
        echo "Data utworzenia: $(date)" >> $filename
    done
elif [ "$1" == "--help" ]; then
    echo "Użycie: $0 [opcja]"
    echo "Opcje:"
    echo "  --date      Wyświetla dzisiejszą datę."
    echo "  --logs [n]  Tworzy n plików logx.txt (domyślnie 100), gdzie x to numer pliku."
    echo "              W każdym pliku znajduje się nazwa pliku, nazwa skryptu i data utworzenia."
    echo "  --help      Wyświetla dostępne opcje."
else
    echo "Nieznana opcja. Użyj '--help' aby wyświetlić dostępne opcje."
fi


