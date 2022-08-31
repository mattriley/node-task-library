#!/bin/bash

function list.join {

    local sep=${OUTSEP:-$SEP}
    echo "${1//${IFS:0:1}/$sep}"
    
}
