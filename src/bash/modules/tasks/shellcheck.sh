#!/bin/bash

function tasks.shellcheck {

    # shellcheck disable=SC2153
    local paths; paths=$(lib.filter_dir_exists "$SHELLCHECK_PATHS")

    # shellcheck disable=SC2038,2068,2086
    find $paths -name "*.sh" | xargs shellcheck $@

}
