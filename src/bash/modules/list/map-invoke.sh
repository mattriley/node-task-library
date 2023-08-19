#!/bin/bash

function list.map_invoke {

    read -r -a arr <<< "$1"
    local callback=${2:-echo}

    for fun in "${arr[@]}"; do
    
        local val; val=$(fp.invoke "$fun"); 
        local res; res=$(fp.invoke "$callback" "$val")
        
        [ -n "$res" ] && echo -n "$res ";
    done

}
