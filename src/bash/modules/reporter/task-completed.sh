#!/bin/bash

function reporter.task_completed {

    local icon="$1"
    local task_name="$2"
    local result="$3"
    local time_taken_ms="$4"

    local time_taken_s; time_taken_s="$(util.ms_to_s "$time_taken_ms")"
    [[ $time_taken_s == .* ]] && time_taken_s="0$time_taken_s"

    reporter.info "${icon} Task ${BOLD}$task_name${NORM} $result in ${time_taken_ms}ms (${time_taken_s}s)"
    
}
