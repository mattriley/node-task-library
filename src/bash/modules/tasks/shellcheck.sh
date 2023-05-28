#!/bin/bash

function tasks.shellcheck {

    # shellcheck disable=SC2153
    local paths; paths=$(lib.filter_dir_exists "$SHELLCHECK_PATHS")

    # shellcheck disable=SC2317
    function shellcheck_callback { find "$1" -type f -name "*.sh" -exec shellcheck "{}" \; ; }
    list.each "$paths" shellcheck_callback

}
