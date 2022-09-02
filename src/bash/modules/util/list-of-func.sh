#!/bin/bash

function util.list_of_func {

    local prefix="${1:-f}"
    local n=1
    
    while util.is_function "$prefix$n"; do
        echo -n "$prefix$n "
        n=$((n + 1))
    done

}
