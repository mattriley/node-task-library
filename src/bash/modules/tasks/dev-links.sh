#!/bin/bash

function tasks.dev_links {

    # shellcheck disable=SC2317
    function callback {
        local target; target="$(pwd)/$NODE_MODULES/$1"
        local link; link="$(pwd)/$NODE_MODULES_LINKS/$1"
        [ -d "$target" ] && ln -s "$target" "$link"
    }

    fs.re_mkdir "$NODE_MODULES_LINKS" && \
    list.each "$DEV_LINKS"


}
