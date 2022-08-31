#!/bin/bash

function util.list.join {

    local sep=${OUTSEP:-$SEP}
    echo "${1//${IFS:0:1}/$sep}"
    
}
