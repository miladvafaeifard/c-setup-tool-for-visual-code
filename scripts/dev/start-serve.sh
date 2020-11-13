#!/bin/bash

cd ../
OUT_DIR="./out"

[ ! -d "$OUT_DIR" ] && mkdir -p "$OUT_DIR"

source ./scripts/dev/helpers.sh

dirs=$(getCurrentDirs "src/*/")
libs=$(getLibfilesInC $dirs)
gcc_run=$(appendGcc "main" $libs)

echo "Executing..."
$gcc_run

echo -e "Output:\e[33m"
./out/main.exe
echo -e "\e[0m"
