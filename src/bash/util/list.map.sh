#!/bin/bash

function list.map {

    local IFS="$SEP"
    local arr=($1)
    local callback=${2:-"callback"}
    local res=()

    for item in "${arr[@]}"; do 
        res+=($($callback "$item"))
    done
    
    unset $callback
    list.join "${res[*]}"

}
