#!/bin/bash

function core.tasks.task_command {

    local task_name="$1"
    local task_function="tasks.${task_name//-/_}"
    local task_file; task_file="$(core.tasks.find_task_file "$task_name")"
    local task_is_function; fp.is_function "$task_function" && task_is_function="true"
    local task_is_file; [ "$task_file" ] && task_is_file="true"
    [ "$task_is_file" ] && echo "$task_file" && return
    [ "$task_is_function" ] && echo "$task_function" && return

}
