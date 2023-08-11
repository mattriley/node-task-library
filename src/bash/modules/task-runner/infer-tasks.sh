#!/bin/bash
# shellcheck disable=2005,2317

function task_runner.infer_tasks {

    local function_prefix="$1"
    function invoke_function { echo "$($1)"; }
    local tasks; tasks=$(list.map "$(util.list_of_func "$function_prefix")" invoke_function)
    [ -z "$tasks" ] && reporter.task_warn "No tasks inferred"
    echo "$tasks"

}
