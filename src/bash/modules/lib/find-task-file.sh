#!/bin/bash

function lib.find_task_file {

    local task_name="$1"
    function callback { [ -f "$1" ]; }
    ( cd "$ROOT" && list.find "$TASKS/$task_name | $TASKS/$task_name.sh" )

}
