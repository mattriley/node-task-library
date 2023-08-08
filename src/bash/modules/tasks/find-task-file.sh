#!/bin/bash
# shellcheck disable=2317

function tasks.find_task_file {

    local task_name="$1"

    function callback { echo "$1/$task_name | $1/$task_name.sh | "; }
    local search; search=$(list.map "$TASKS")

    list.find "$search" fs.file_exists

}