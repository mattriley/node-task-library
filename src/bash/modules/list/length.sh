#!/bin/bash

function list.length {

    IFS="$SEP" read -r -a arr <<< "$1"
    echo "${#arr[@]}"

}
