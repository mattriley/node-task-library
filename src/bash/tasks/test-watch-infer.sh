#!/bin/bash

function tasks.test_watch_infer {

    set -e

    tasks=$(lib.infer_test_task "test-watch" "$DEFAULT_TEST_WATCH_TASK")
    lib.run_tasks "$tasks"

}
