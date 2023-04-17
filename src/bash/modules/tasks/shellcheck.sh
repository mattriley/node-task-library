#!/bin/bash

function tasks.shellcheck {

    local dirs; dirs=$(list.flat "$SHELLCHECK_PATHS")

    # shellcheck disable=SC2068,SC2086
    find $dirs -name "*.sh" -exec shellcheck {} $@ \;

}
