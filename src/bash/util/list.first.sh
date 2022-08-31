#!/bin/bash

function util.list.first {

    IFS="$SEP" read -r -a arr <<< "$1"
    echo "${arr[0]}"
    
}
