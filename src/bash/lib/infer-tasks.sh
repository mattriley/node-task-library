function infer_tasks {

    local task_name="$1"
    local default_task="$2"
    local func_prefix="f"
    local func_names=""
    local n=1
    
    while [ is_function "$func_prefix$n" ]
    do
        func_names+=" $func_prefix$n"
        n=n+1
    done

    function mapper { $1; unset $1; }
    tasks=$(map "$func_names" mapper)
    [ -z "$tasks" ] && echo "$default_task" || echo "$tasks"

}
