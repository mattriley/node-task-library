#!/bin/bash

function infer_tasks {

    local default_task="$1"

    function callback {
        # shellcheck disable=SC2005
        echo "$($1)"
        unset "$1"
    }

    local tasks
    tasks=$(list.map "$(list_of_func)")
    [ -z "$tasks" ] && echo "$default_task" || echo "$tasks"

}
