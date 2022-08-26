function infer_tasks {

    task_name="$1"
    func_names="$2"
    function mapper { $1; unset $1; }
    tasks=$(map "$func_names" mapper)
    num_tasks=$(length "$tasks")

    [ -z "$tasks" ] && warn "Unable to infer $task_name task" && exit 0

    if [ $num_tasks -gt 1 ]; then
        echo
        echo "The following tasks will be run:"
        function action { echo "• $1"; }
        for_each "$tasks" action
        ask_ok
    fi

    function action { npx task "$1"; }
    for_each "$tasks" action

}
