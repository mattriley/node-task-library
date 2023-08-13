#!/bin/bash
# shellcheck disable=2317

function tests.infer_test_tasks {

    local task_name="$1"
    local default_task="$2"

    [ -z "$TEST_RUNNER" ] && echo "$default_task" && return 0
    
    function infer_test_tasks_1 { [ -z "$task_name" ] && echo "$TEST_RUNNER-test"; }
    function infer_test_tasks_2 { core.tasks.task_exists "$TEST_RUNNER-$task_name" && echo "$TEST_RUNNER-$task_name"; }
    function infer_test_tasks_3 { echo "$default_task"; }

    list.first "$(core.tasks.infer_tasks infer_test_tasks_)"

}
