#!/bin/bash

function list.length {

    read -r -a arr <<< "$1"
    echo "${#arr[@]}"

}
