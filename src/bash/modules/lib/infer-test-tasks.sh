#!/bin/bash

function lib.infer_test_tasks {

    [ ! -d "$TESTS" ] && reporter.warn "Tests directory not found: $TESTS" && return

    local task_name="$1"
    local default_task="$2"

    [ -z "$TEST_RUNNER" ] && echo "$default_task" && return 0

    function f1 { [ -z "$task_name" ] && echo "$TEST_RUNNER-test"; }
    function f2 { lib.task_exists "$TEST_RUNNER-$task_name" && echo "$TEST_RUNNER-$task_name"; }
    lib.infer_tasks "$default_task"

}
