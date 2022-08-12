function find_task_file {
    task_name="$1"
    [ -z "$task_name" ] && echo "Task name is required" && exit 1
    function mapper { echo "$1/$task_name"; }
    paths=$(map "$TASK_PATHS" mapper)
    function predicate { [ -f "$1" ]; }
    find "$paths" predicate
}