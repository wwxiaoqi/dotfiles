#!/bin/bash

usage() {
    printf "\
        Usage:
    $0 [name]
    $0 all
    "
}

if [[ -n "$1" ]]; then
    if [[ "$1" == "all" ]]; then
        all="alacritty bspwm configuration dunst fish picom polybar rofi scripts spicetify sxhkd"
    else
        all=$*
    fi
else
    usage
    exit 1
fi

for i in $all; do
    echo "Installing: $i"
    stow -t $HOME $i || exit -1
done

echo "Installation Success!"
