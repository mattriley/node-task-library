#!/bin/bash

function lib.run_task {

    local task_name="$1"
    local task_args="${*:2}"
    local task_command; task_command=$(lib.task_command "$task_name")

    [ -z "$task_command" ] && ui.info "${RED}▇${NORM} Task ${BOLD}$task_name${NORM} not found" 1>&2 && return 1
    
    ui.info "▇ Task ${BOLD}$task_name${NORM} started..."

    local time_before; time_before="$(util.now_ms)"
    # shellcheck disable=SC2086
    ( cd "$ROOT" && "$task_command" $task_args )
    local return_code="$?"
    local time_after; time_after="$(util.now_ms)"

    local time_taken_ms="$((time_after-time_before))"
    local time_taken_s; time_taken_s="$(util.ms_to_s $time_taken_ms)"
    [[ $time_taken_s == .* ]] && time_taken_s="0$time_taken_s"
    [ $return_code = 0 ] && icon="${GRE}▇${NORM}" || icon="${RED}▇${NORM}"
    [ $return_code -gt 0 ] && export ERROR_COUNT=$((ERROR_COUNT + 1))
    local result; [ $return_code = 0 ] && result="succeeded" || result="failed with exit code $return_code"
    ui.info "${icon} Task ${BOLD}$task_name${NORM} $result in ${time_taken_ms}ms (${time_taken_s}s)"
    return $return_code

}
