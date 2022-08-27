function run_tasks {

    local tasks="$1"
    function action { run_task "$1"; }
    for_each "$tasks" "action"

}
