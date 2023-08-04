#!/bin/bash

function list.map {

    read -r -a arr <<< "$1"
    local callback=${2:-"callback"}

    for item in "${arr[@]}"; do
        local res; res="$($callback "$item")"
        [ "$res" ] && echo -n "$res "
    done

    # unset "$callback"

}
