#!/bin/bash

function tasks.dev_links {

    set -e

    fs.remkdir "$NODE_MODULES_LINKS"

    function callback {
        local target
        target="$(pwd)/$NODE_MODULES/$1"
        local link
        link="$(pwd)/$NODE_MODULES_LINKS/$1"
        [ -d "$target" ] && ln -s "$target" "$link"
    }

    list.each "$DEV_LINKS"

}
