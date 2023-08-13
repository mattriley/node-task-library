#!/bin/bash

function list.map {

    read -r -a arr <<< "$1"
    local callback=${2:-echo}

    for val in "${arr[@]}"; do
        local res; res=$(fp.invoke "$callback" "$val")
        [ "$res" ] && echo -n "$res "
    done

}
