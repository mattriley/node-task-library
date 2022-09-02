#!/bin/bash

function lib.find_task_file {

    local task_name="$1"

    [ -z "$task_name" ] && util.warn "Task name is required" && return 1

    function callback { [ -f "$TASKS/$1" ]; }
    list.find "$task_name | $task_name.sh"

}
