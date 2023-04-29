#!/bin/bash

function tasks.eslint {

    # shellcheck disable=SC2153
    local paths; paths=$(lib.filter_dir_exists "$ESLINT_PATHS")

    # shellcheck disable=SC2068,SC2086
    eslint --ext ".mjs" --ext ".js" $@ $paths

}
