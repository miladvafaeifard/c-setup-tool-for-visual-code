# param path
function getCurrentDirs {
    local path=$1
    if [[ ! -z $path ]]; then
        local dirs=$(ls -d $1)
        echo $dirs
    fi
}

# params dir dir dir ...
# return lib files concatenated with .c
function getLibfilesInC {
    local dirs=$@
    local libs=""
    for dir in $dirs; do
        libs+="$dir*.c "
    done
    echo $libs
}

# params lib lib lib ...
# return backed gcc
function appendGcc {
    local file=$1
    local libs=${@:2}
    local gcc_run="gcc -g "
    for lib in $libs; do
        gcc_run+="${lib} "
    done
    gcc_run+="src/$file.c -o out/$file.exe"
    echo $gcc_run
}
