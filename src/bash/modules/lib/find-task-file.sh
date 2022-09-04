#!/bin/bash

function lib.find_task_file {

    local task_name="$1"
    function callback { [ -f "$TASKS/$1" ]; }
    ( cd "$ROOT" && list.find "$task_name | $task_name.sh" )

}
