#!/bin/bash

function task_runner.task_exists {

    local task_name="$1"
    local task_command; task_command=$(task_runner.task_command "$task_name")
    [ "$task_command" ]

}
