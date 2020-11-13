#!/bin/bash

cd ../
OUT_DIR="./out"

[ ! -d "$OUT_DIR" ] && mkdir -p "$OUT_DIR"

source ./scripts/dev/helpers.sh

# functions list execution
# dirs=$(getCurrentDirs "src/*/")
# libs=$(getLibfilesInC $dirs)
# gcc_run=$(appendGcc "main" $libs)

# pipes
gcc_run=$(getCurrentDirs "src/*/" | concatFilesPipe "c" | wrapGccPipe "main")

echo "Executing..."
echo "${gcc_run}"
$gcc_run

echo -e "Output:\e[33m"
./out/main.exe
echo -e "\e[0m"
