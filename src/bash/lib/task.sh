function task {
    task_name=${1:-default}
    [ -z "$VARS" ] && load_vars
    task_file=$(find_task_file $task_name)
    [ -z "$task_file" ] && echo -e "Task ${BOLD}$task_name${NORM} not found" && exit 1
    chmod +x "$task_file"
    echo "${NORM}⚡️ Task ${BOLD}$task_name${NORM} started" # Source: $task_file"
    time_before=$(now)
    "$task_file" "${@:2}"
    exit_code=$?
    time_after=$(now)
    time_taken_ms=$((time_after-time_before))
    time_taken_s=$(echo "scale=1;${time_taken_ms}/1000" | bc)
    [[ $time_taken_s == .* ]] && time_taken_s="0$time_taken_s"
    [ $exit_code = 0 ] && icon="✅" || icon="❌"
    echo "${NORM}${icon} Task ${BOLD}$task_name${NORM} completed with exit code $exit_code in ${time_taken_ms}ms (${time_taken_s}s)"
    exit $exit_code
}
