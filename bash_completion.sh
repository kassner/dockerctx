#!/bin/bash

_dockerctx_completions()
{
    contextfolder=$HOME/.docker
    options=""

    for file in $contextfolder/*.json; do
        name=${file//$contextfolder/}
        name=${name:1}
        name=${name:0:-5}

        if [[ $name == "config" ]]; then
            continue
        fi

        options="$options $name"
    done

    COMPREPLY=($(compgen -W "$options" "${COMP_WORDS[1]}"))
}

complete -F _dockerctx_completions dockerctx
