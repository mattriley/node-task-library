#!/bin/bash

function tasks.node_modules_selected {

    # shellcheck disable=SC2317
    function callback {
        local target; target="$(pwd)/$NODE_MODULES/$1"
        local link; link="$(pwd)/$NODE_MODULES_LINKS/$1"
        [ -d "$target" ] && ln -s "$target" "$link"
    }

    fs.re_mkdir "$NODE_MODULES_LINKS" && \
    list.each "$SELECTED_NODE_MODULES"


}
