#!/bin/bash

function list.find {

    read -r -a arr <<< "$1"
    local callback="$2"

    for val in "${arr[@]}"; do 
        fp.invoke "$callback" "$val" && echo "$val" && break;
    done

}
