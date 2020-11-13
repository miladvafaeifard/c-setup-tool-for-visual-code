#!/bin/bash

cd ../
OUT_DIR="./out"

[ ! -d "$OUT_DIR" ] && mkdir -p "$OUT_DIR"

gcc -g src/**/*.c src/main.c -o out/main.exe -lm

echo -e "Output:\e[33m"
./out/main.exe
echo -e "\e[0m"
