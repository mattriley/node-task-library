#!/bin/bash

function fp.list_of_func {

    local prefix="${1:-f}"
    compgen -A function | grep "^$prefix\d" | sort -k1.2n | tr '\n' ' '

}
