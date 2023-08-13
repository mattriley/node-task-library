#!/bin/bash

function list.find_invoke {

    read -r -a arr <<< "$1"
    local callback="$2"

    for fun in "${arr[@]}"; do
        local res; res="$($fun)"
        unset "$fun"
        res=$($callback "$res")
        [ "$res" ] && echo "$res" && break;
    done

}
