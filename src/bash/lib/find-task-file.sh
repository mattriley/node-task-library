#!/bin/bash

function lib.find_task_file {

    local task_name="$1"

    [ -z "$task_name" ] && lib.warn "Task name is required" && exit 1
    
    function callback { echo "$1/$task_name $1/$task_name.sh"; }
    local paths
    paths=$(util.list.map "$TASK_PATHS")

    function callback { [ -f "$1" ]; }
    util.list.find "$paths"

}
