#!/bin/bash

function tasks.eslint {

    # shellcheck disable=SC2317
    function callback { ! fs.is_dir_empty "$1"; } 

    # shellcheck disable=SC2153
    local eslint_paths; eslint_paths=$(list.filter "$ESLINT_PATHS")

    # shellcheck disable=SC2068,SC2086
    eslint --ext ".mjs" --ext ".js" $@ $eslint_paths

}
