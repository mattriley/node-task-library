#!/bin/bash

function list.find {

    read -r -a arr <<< "$1"
    local callback="$2"

    for item in "${arr[@]}"; do 
        "$callback" "$item" && echo "$item" && break;
    done

}
