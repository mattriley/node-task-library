function infer_test_task {

    local task_name="$1"
    local default_task="$2"

    [ -z "$TEST_RUNNER" ] && echo "$default_task" && return 0

    function f1 { [ -z "$task_name" ] && echo "$TEST_RUNNER" || echo "$TEST_RUNNER-$task_name"; }
    infer_tasks "$task_name" "$default_task"

}
