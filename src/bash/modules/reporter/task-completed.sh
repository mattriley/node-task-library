#!/bin/bash

function reporter.task_completed {

    local task_name="$1"
    local result_code="$2"
    local result_supp="$3"
    local time_taken_ms="$4"
    local flag
    local text

    case "$result_code" in
    "PASS")
        flag="$GREEN_FLAG"
        text="succeeded"
        ;;
    "SKIP")
        flag="$YELLOW_FLAG"
        text="skipped with reason $result_supp"
        ;;
    "FAIL")
        flag="$RED_FLAG"
        text="failed with exit code $result_supp"
        ;;
    *)
        exit 1
        ;;
    esac

    local time_taken_s; time_taken_s="$(util.ms_to_s "$time_taken_ms")"
    [[ $time_taken_s == .* ]] && time_taken_s="0$time_taken_s"
    reporter.info "${flag} Task ${BOLD}$task_name${NORM} $text in ${time_taken_ms}ms (${time_taken_s}s)"
    
}
