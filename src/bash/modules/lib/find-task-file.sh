#!/bin/bash

function lib.find_task_file {

    local task_name="$1"

    [ -z "$task_name" ] && util.warn "Task name is required" && return 1

    function callback { [ -f "$1" ]; }
    list.find "$1/$task_name | $1/$task_name.sh"

}
