#!/bin/bash

function lib.find_task_file {

    local task_name="$1"

    # shellcheck disable=SC2317
    function callback { echo "$1/$task_name | $1/$task_name.sh | "; }
    local search; search=$(list.map "$TASKS")

    list.find "$search" predicates.file_exists

}
