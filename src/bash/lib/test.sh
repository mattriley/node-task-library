function test {

    suffix="$1"
    default_task="$2"

    [ -z "$TEST_RUNNER" ] && warn "No test runner found" && return 0
    [ -z "$suffix" ] && task="$TEST_RUNNER" || task="$TEST_RUNNER-$suffix"

    ! task_exists "$task" && 
    warn "$task task not found. Defaulting to $default_task" && 
    task="$default_task"

    npx task "$task"
    
}
