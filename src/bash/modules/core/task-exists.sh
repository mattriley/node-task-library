#!/bin/bash

function core.task_exists {

    local task_name="$1"
    local task_command; task_command=$(core.task_command "$task_name")
    [ "$task_command" ]

}
