#!/bin/bash
# shellcheck disable=2005

function util.invoke_anon {

    $1
    unset "$1"

}
