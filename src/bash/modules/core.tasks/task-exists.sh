#!/bin/bash

function core.tasks.task_exists {

    local task_name="$1"
    local task_command; task_command=$(core.tasks.task_command "$task_name")
    [ "$task_command" ]

}
