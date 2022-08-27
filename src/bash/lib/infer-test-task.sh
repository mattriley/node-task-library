function infer_test_task {

    suffix="$1"
    default_task="$2"

    [ -z "$TEST_RUNNER" ] && warn "No test runner found" && return 1

    function f1 { [ -z "$suffix" ] && echo "$TEST_RUNNER" || echo "$TEST_RUNNER-$suffix"; }

    infer_tasks "$suffix" "f1" "$default_task"

}
