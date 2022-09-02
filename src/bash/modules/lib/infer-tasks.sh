#!/bin/bash

function lib.infer_tasks {

    local default_task="$1"

    function callback {
        # shellcheck disable=SC2005
        echo "$($1)"
        unset "$1"
    }

    local tasks; tasks=$(list.map "$(util.list_of_func)")
    [ "$tasks" ] && echo "$tasks" || echo "$default_task"

}
