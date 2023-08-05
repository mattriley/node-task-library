#!/bin/bash

function tasks.shellcheck {

    # shellcheck disable=2153
    local paths; paths=$(list.filter "$SHELLCHECK_PATHS" fs.dir_not_empty)

    # shellcheck disable=2317
    function shellcheck_callback { find "$1" -type f -name "*.sh" -exec shellcheck "{}" \; ; }
    list.each "$paths" shellcheck_callback

}
