#!/bin/bash

function test_watch_infer {

    set -e

    tasks=$(infer_test_task "test-watch" "$DEFAULT_TEST_WATCH_TASK")
    run_tasks "$tasks"

}
