#!/bin/bash

function tasks.task_exists {

    local task_name="$1"
    local task_command; task_command=$(tasks.task_command "$task_name")
    [ "$task_command" ]

}
