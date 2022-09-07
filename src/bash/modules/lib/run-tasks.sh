#!/bin/bash

function lib.run_tasks {

    local tasks="$1"
    local task_args=${*:2}
    local result=0;
    function callback { ! lib.run_task "$1" "$task_args" && result=1; }
    list.each "$tasks"
    return $result;

}
