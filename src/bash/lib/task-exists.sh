function task_exists {
    $(find_task_file "$1")
    return "$?"
}
