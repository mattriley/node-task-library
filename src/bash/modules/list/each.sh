#!/bin/bash

function list.each {

    IFS="$SEP" read -r -a arr <<< "$1"
    local callback=${2:-"callback"}

    for item in "${arr[@]}"; do 
        "$callback" "$item"
    done

    # unset "$callback"

}
