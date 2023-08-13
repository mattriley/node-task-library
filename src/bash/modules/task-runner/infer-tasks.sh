#!/bin/bash
# shellcheck disable=2005,2317

function task_runner.infer_tasks {

    local function_prefix="$1"
    local tasks; tasks=$(list.map_invoke "$(util.list_of_func "$function_prefix")")
    [ -z "$tasks" ] && reporter.task_warn "No tasks inferred"
    echo "$tasks"

}
