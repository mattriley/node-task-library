#!/bin/bash

function lib.run_task {

    local task_name="$1"
    local task_args="${*:2}"
    local task_function="tasks.${task_name//-/_}"
    local task_file; task_file="$(lib.find_task_file "$task_name")"
    local task_is_function; util.is_function "$task_function" && task_is_function="true"
    local task_is_file; [ "$task_file" ] && task_is_file="true"
    local task_exists; [ "$task_is_function" ] || [ "$task_is_file" ] && task_exists="true"
    local task_command; [ "$task_is_file" ] && task_command="$task_file" || task_command="$task_function"

    [ -z "$task_exists" ] && echo "Task ${BOLD}$task_name${NORM} not found" 1>&2 && return 1
    echo "${NORM}⚡️ Task ${BOLD}$task_name${NORM} started"

    function run_task_command { "$task_command" "$task_args"; }
    function run_task_file { ( cd "$ROOT" && chmod +x "$task_file" && run_task_command ); }
    
    local time_before; time_before="$(util.now_ms)"
    if [ "$task_is_file" ]; then run_task_file; else run_task_command; fi
    local return_code="$?"
    local time_after; time_after="$(util.now_ms)"

    local time_taken_ms="$((time_after-time_before))"
    local time_taken_s; time_taken_s="$(util.ms_to_s $time_taken_ms)"
    [[ $time_taken_s == .* ]] && time_taken_s="0$time_taken_s"
    [ $return_code = 0 ] && icon="✅" || icon="❌"
    [ $return_code -gt 0 ] && export ANY_ERR=1
    echo "${NORM}${icon} Task ${BOLD}$task_name${NORM} completed with exit code $return_code in ${time_taken_ms}ms (${time_taken_s}s)"
    return "$return_code"

}
