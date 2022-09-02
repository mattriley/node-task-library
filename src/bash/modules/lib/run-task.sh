#!/bin/bash

function lib.run_task {

    local task_name="$1"
    local task_file
    task_file=$(lib.find_task_file "$task_name")
    task_function="tasks.${task_name//-/_}"
    [ -z "$task_file" ] && ! util.is_function "$task_function" && echo -e "Task ${BOLD}$task_name${NORM} not found" && return 1

    
    echo "${NORM}⚡️ Task ${BOLD}$task_name${NORM} started" # Source: $task_file"
    local time_before
    time_before=$(util.now_ms)
    if util.is_function "$task_function"; then   
        "$task_function" "${@:2}"        
    else
        chmod +x "$task_file"
        ( cd "$ROOT" && "$task_file" "${@:2}" )
    fi
    local return_code=$?
    local time_after
    time_after=$(util.now_ms)
    local time_taken_ms=$((time_after-time_before))
    local time_taken_s
    time_taken_s=$(util.ms_to_s $time_taken_ms)
    [[ $time_taken_s == .* ]] && time_taken_s="0$time_taken_s"
    [ $return_code = 0 ] && icon="✅" || icon="❌"
    echo "${NORM}${icon} Task ${BOLD}$task_name${NORM} completed with exit code $return_code in ${time_taken_ms}ms (${time_taken_s}s)"
    return $return_code

}
