function run_first_task {

    local tasks="$1"
    local task=$(list_first "$tasks")
    run_task "$task"

}
