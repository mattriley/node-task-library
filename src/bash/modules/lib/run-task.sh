#!/bin/bash
# shellcheck disable=2086

function lib.run_task {

    local task_name="$1"
    local task_args="${*:2}"
    local task_command; task_command=$(lib.task_command "$task_name")

    [ -z "$task_command" ] && reporter.info "$RED_FLAG Task ${BOLD}$task_name${NORM} not found" 1>&2 && return 1
    
    reporter.info "$WHITE_FLAG Task ${BOLD}$task_name${NORM} started..."

    local time_before; time_before="$(util.now_ms)"
    
    local precondition_command="$task_command.precondition"
    local skip_reason; util.is_function $precondition_command && skip_reason="$("$precondition_command" $task_args)"
    local exit_code=0; [ "$skip_reason" ] || "$task_command" $task_args || exit_code="$?"

    local time_after; time_after="$(util.now_ms)"
    local time_taken_ms="$((time_after-time_before))"

    local result_code="PASS"
    local result_supp=""
    [ $exit_code -ne 0 ] && result_code="FAIL" && result_supp="$exit_code"
    [ "$skip_reason" ] && result_code="SKIP" && result_supp="$skip_reason"

    reporter.task_completed "$task_name" "$result_code" "$result_supp" "$time_taken_ms"

    return $exit_code

}
