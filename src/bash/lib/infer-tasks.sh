function infer_tasks {

    local task_name="$1"
    local default_task="$2"

    function callback { 
        echo "$($1)"
        unset $1
    }

    local tasks=$(list.map "$(list_of_func)" callback)
    [ -z "$tasks" ] && echo "$default_task" || echo "$tasks"

}
