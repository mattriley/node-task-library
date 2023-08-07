#!/bin/bash

function tasks.node_modules_selected {

    local dest="$PACKAGE_ROOT/node_modules_selected"

    # shellcheck disable=2317
    function link_selected_node_module {
        local target; target="$(pwd)/$NODE_MODULES/$1"
        local link; link="$(pwd)/$dest/$1"
        [ -d "$target" ] && mkdir -p "dest" && ln -s "$target" "$link"
    }

    rm -rf "$dest" &&
    list.each "$SELECTED_NODE_MODULES" link_selected_node_module

}
