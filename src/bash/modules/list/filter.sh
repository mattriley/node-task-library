#!/bin/bash

function list.filter {

    read -r -a arr <<< "$1"
    local callback="$2"

    for item in "${arr[@]}"; do 
        "$callback" "$item" && echo -n "$item "
    done

}
