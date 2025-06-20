#!/bin/bash
#
# sudo apt-get install -y nano most xclip

OLD_PATH=$(pwd)
cd "$(dirname -- "$BASH_SOURCE")" || exit 1
# cd "$(dirname -- "$0")" || exit 1

PS1="\n\e[2m[user: \u] \w\e[0m\n> "
PATH=$PATH:$(pwd)

export PAGER="most"
export EDITOR="nano"

alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"

for entry in bash-configs.d/*.sh; do . "$entry"; done

## Reset PWD
cd $OLD_PATH
