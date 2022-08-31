#!/bin/bash

function tasks.test_infer {

    set -e

    tasks=$(lib.infer_test_task "" "$DEFAULT_TEST_TASK")
    lib.run_tasks "$tasks"

}
