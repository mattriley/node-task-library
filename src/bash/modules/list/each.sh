#!/bin/bash

function list.each {

    read -r -a arr <<< "$1"
    local callback="$2"

    for item in "${arr[@]}"; do 
        "$callback" "$item"
    done

}
