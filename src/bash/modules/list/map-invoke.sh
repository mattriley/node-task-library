#!/bin/bash

function list.map_invoke {

    read -r -a arr <<< "$1"
    local callback=${2:-echo}

    for fun in "${arr[@]}"; do
        local res; res=$(fp.invoke "$fun"); res=$(fp.invoke "$callback" "$res")
        [ "$res" ] && echo -n "$res ";
    done

}
