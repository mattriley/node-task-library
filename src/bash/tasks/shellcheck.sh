#!/bin/bash
# shellcheck disable=2317

function tasks.shellcheck {

    local paths; paths=$(list.reject "$SHELLCHECK_PATHS" fs.dir_empty)
    function run_shellcheck { find "$1" -type f -name "*.sh" -exec shellcheck "{}" \; ; }
    list.each "$paths" run_shellcheck

}
