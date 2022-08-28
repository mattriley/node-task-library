#!/bin/bash

function list.filter {

    local IFS="$SEP"
    local arr=($1)
    local callback=${2:-"callback"}
    
    for item in "${arr[@]}"; do 
        $callback "$item" && echo "$item"
    done
    
    unset "$callback"

}
