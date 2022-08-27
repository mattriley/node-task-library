function infer_tasks {

    task_name="$1"
    func_prefix="f"
    default_task="$2"

    func_names=""
    x=1
    while [ "$(type -t "$func_prefix$x")" = 'function' ]
    do
        func_names+=" $func_prefix$x"
        x=x+1
    done

    function mapper { $1; unset $1; }
    tasks=$(map "$func_names" mapper)

    # echo "1 $tasks"

    #function predicate1 { echo "&&&&&&"; task_exists "$1"; echo "$?"; return "$?"; }
    #tasks=$(filter "$tasks" predicate1)
    num_tasks=$(length "$tasks")

    [ -z "$tasks" ] && echo "$default_task" || echo "$tasks"

    # echo "$tasks"

    # echo "2 $tasks"

    # [ -z "$tasks" ] && warn "Unable to infer $task_name task" && exit 0

    # echo "   Inferred ${BOLD}$tasks${NORM}"

    # run_tasks "$tasks"

}
