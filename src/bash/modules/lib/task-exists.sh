#!/bin/bash

function lib.task_exists {

    local task_name="$1"
    local task_command; task_command=$(lib.task_command "$task_name")
    [ "$task_command" ]

}
