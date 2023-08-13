#!/bin/bash

function fp.invoke {

    $1 "${@:2}"
    local res=$?
    [[ $1 =~ $ANON_FUNC_PATTERN ]] && unset "$1"
    return $res

}
