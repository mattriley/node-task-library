#!/bin/bash
# shellcheck disable=SC2068,SC2086

function tasks.shellcheck {

    local dirs; dirs=$(list.flat "$SHELLCHECK_PATHS")
    find $dirs -name "*.sh" -exec shellcheck {} $@ \;

}
