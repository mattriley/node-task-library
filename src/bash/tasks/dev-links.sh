#!/bin/bash

IFS="$SEP"; package_names=($DEV_LINKS); unset IFS
fs.remkdir "$NODE_MODULES_LINKS"

function callback {
    local target="$(pwd)/$NODE_MODULES/$1"
    local link="$(pwd)/$NODE_MODULES_LINKS/$1"
    [ -d "$target" ] && ln -s "$target" "$link"
}

list.each "$DEV_LINKS"