#!/bin/bash
# shellcheck disable=2317

function core.tasks.find_task_file {

    local task_name="$1"
    function task_files { echo "$1/$task_name $1/$task_name.sh"; }
    local search; search=$(list.map "$TASKS" task_files)
    list.find "$search" fs.file_exists

}
