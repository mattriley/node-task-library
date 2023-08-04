#!/bin/bash

function list.flat {

    read -r -a arr <<< "$1"

    for item in "${arr[@]}"; do
        echo -n "$item "
    done

}
