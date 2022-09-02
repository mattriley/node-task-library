#!/bin/bash

function list.filter {

    IFS="$SEP" read -r -a arr <<< "$1"
    local callback=${2:-"callback"}

    for item in "${arr[@]}"; do 
        $callback "$item" && echo "$item"
    done

    unset "$callback"

}
