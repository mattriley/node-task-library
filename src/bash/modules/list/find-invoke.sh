#!/bin/bash

function list.find_invoke {

    read -r -a arr <<< "$1"
    local callback="$2"

    for fun in "${arr[@]}"; do
        local val; val=$(fp.invoke "$fun")
        local res; res=$(fp.invoke "$callback" "$val")
        [ "$res" ] && echo "$res" && break;
    done

}
