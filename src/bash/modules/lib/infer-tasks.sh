#!/bin/bash
# shellcheck disable=SC2005

function lib.infer_tasks {

    local default_task="$1"
    function callback { echo "$($1)"; unset "$1"; }
    local tasks; tasks=$(list.map "$(util.list_of_func)")
    [ -z "$tasks" ] && tasks="$default_task"
    [ -z "$tasks" ] && ui.task_warn "No tasks inferred"
    echo "$tasks"

}
