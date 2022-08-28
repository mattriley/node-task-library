#!/bin/bash

function list.length {

    local IFS="$SEP"
    local arr=($1)
    echo "${#arr[@]}"
    
}
