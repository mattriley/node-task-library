function run_tasks {

    local tasks="$1"
    function callback { run_task "$1"; }
    list_each "$tasks"

}
