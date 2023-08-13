#!/bin/bash

function list.reject {

    read -r -a arr <<< "$1"
    local callback="$2"

    for val in "${arr[@]}"; do 
        fp.invoke "$callback" "$val" || echo -n "$val "
    done

}
