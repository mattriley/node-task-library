#!/bin/bash

function list.flat {

    read -r -a arr <<< "$1"

    for val in "${arr[@]}"; do
        echo -n "$val "
    done

}
