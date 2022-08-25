function task_exists {
    find_task_file "$task"
    return "$?"
}
