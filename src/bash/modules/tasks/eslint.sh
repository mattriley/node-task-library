#!/bin/bash

function tasks.eslint {

    # shellcheck disable=2153
    local paths; paths=$(list.filter "$ESLINT_PATHS" fs.dir_not_empty)

    # shellcheck disable=2068,2086
    eslint --ext ".mjs" --ext ".js" $@ $paths

}
