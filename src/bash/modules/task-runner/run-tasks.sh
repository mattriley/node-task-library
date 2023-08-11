#!/bin/bash
# shellcheck disable=2317

function task_runner.run_tasks {

    local tasks="$1"
    local task_args=${*:2}
    local result=0;
    function run_task { ! task_runner.run_task "$1" "$task_args" && result=1; }
    list.each "$tasks" run_task
    return $result;

}
