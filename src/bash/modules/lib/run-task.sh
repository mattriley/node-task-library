#!/bin/bash
# _shellcheck disable=SC2086

function lib.run_task {

    local task_name="$1"
    local task_args="${*:2}"
    local task_command; task_command=$(lib.task_command "$task_name")

    [ -z "$task_command" ] && reporter.info "$RED_FLAG Task ${BOLD}$task_name${NORM} not found" 1>&2 && return 1
    
    reporter.info "$WHITE_FLAG Task ${BOLD}$task_name${NORM} started..."

    local time_before; time_before="$(util.now_ms)"
    
    # local precondition_fail_reason="$("$task_command.precondition" $task_args)"
    # if "$precondition_fail_reason"; then
    #     reporter.info "${icon} Task ${BOLD}$task_name${NORM} $result in ${time_taken_ms}ms (${time_taken_s}s)"
    # fi

    "$task_command" $task_args
    local exit_code="$?"
    local time_after; time_after="$(util.now_ms)"
    local time_taken_ms="$((time_after-time_before))"

    local result_code; [ $exit_code = 0 ] || result_supp="$exit_code"
    local result_code; [ $exit_code = 0 ] && result_code="PASS" || result_code="FAIL"

    reporter.task_completed "$task_name" "$result_code" "$result_supp" "$time_taken_ms"

    return $exit_code

}
