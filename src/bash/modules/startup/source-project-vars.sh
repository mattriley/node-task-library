#!/bin/bash
# shellcheck disable=SC1091

function startup.source_project_vars {

    source "./task-vars" 2> /dev/null
    local root=${ROOT_OVERRIDE:-"$ROOT"}
    [ "$root" ] && source "$root/task-vars" 2> /dev/null

}
