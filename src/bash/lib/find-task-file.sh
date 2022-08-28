function find_task_file {

    local task_name="$1"
    [ -z "$task_name" ] && echo "Task name is required" && exit 1
    
    function callback { echo "$1/$task_name"; }
    paths=$(list.map "$TASK_PATHS")

    function callback { [ -f "$1" ]; }
    list.find "$paths"

}
