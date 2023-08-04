#!/bin/bash
# shellcheck disable=SC2005

function lib.infer_tasks {

    local default_task="$1"
    function invoke_function { echo "$($1)"; unset "$1"; }
    local tasks; tasks=$(list.map "$(util.list_of_func)" invoke_function)
    [ -z "$tasks" ] && tasks="$default_task"
    [ -z "$tasks" ] && reporter.task_warn "No tasks inferred"
    echo "$tasks"

}
