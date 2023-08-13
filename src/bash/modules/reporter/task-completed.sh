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
        text="${GREEN}succeeded${NORM}"
        ;;
    "SKIP")
        flag="$YELLOW_FLAG"
        text="${YELLOW}skipped${NORM} because $result_supp"
        ;;
    "FAIL")
        flag="$RED_FLAG"
        text="${RED}failed${NORM} with exit code $result_supp"
        ;;
    *)
        exit 1
        ;;
    esac

    local time_taken_s; time_taken_s="$(time.ms_to_s "$time_taken_ms")"
    [[ $time_taken_s == .* ]] && time_taken_s="0$time_taken_s"
    reporter.info "${flag} Task ${BOLD}$task_name${NORM} $text • ${time_taken_ms}ms (${time_taken_s}s)"
    
}
