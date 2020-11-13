#!/bin/bash

cd ../
DIR="./out"

[ ! -d "$DIR" ] && mkdir -p "$DIR"

echo -e "\nbuilding files in ${DIR}..."

gcc -g src/main.c -o out/main.exe

echo -e "Output:\e[33m"
./out/main.exe
echo -e "\e[0m"
