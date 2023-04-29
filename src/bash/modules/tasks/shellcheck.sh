#!/bin/bash

function tasks.shellcheck {

    # shellcheck disable=SC2317
    function callback { ! fs.is_dir_empty "$1"; } 

    # shellcheck disable=SC2153
    local shellcheck_paths; shellcheck_paths=$(list.filter "$SHELLCHECK_PATHS")

    # local dirs; dirs=$(list.flat "$shellcheck_paths")

    # shellcheck disable=SC2068,SC2086
    find $shellcheck_paths -name "*.sh" -exec shellcheck {} $@ \;

}
