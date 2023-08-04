#!/bin/bash

function list.first {

    read -r -a arr <<< "$1"
    echo "${arr[0]}"

}
