#!/bin/bash

function list.each {

    read -r -a arr <<< "$1"
    local callback="$2"

    for val in "${arr[@]}"; do 
        fp.invoke "$callback" "$val"
    done

}
