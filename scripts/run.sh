#!/bin/bash

ARGS_LENGTH="$#"
ARGS="$@"

if [ $ARGS_LENGTH -gt 0 ]; then
    case $ARGS in
        "build")
            cd ./scripts
            ./build/start-serve.sh
        ;;
        "dev")
            cd ./scripts
            ./dev/start-serve.sh
        ;;
        
        *)
            echo "unable to find ${ARGS} in the stages to run"
        ;;
    esac
fi
