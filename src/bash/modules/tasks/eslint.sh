#!/bin/bash

function tasks.eslint {

    # shellcheck disable=2153
    local paths; paths=$(lib.filter_dir_exists "$ESLINT_PATHS")

    # shellcheck disable=2068,2086
    eslint --ext ".mjs" --ext ".js" $@ $paths

}
