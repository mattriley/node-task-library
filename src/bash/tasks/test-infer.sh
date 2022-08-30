#!/bin/bash

function test_infer {

    set -e

    tasks=$(infer_test_task "" "$DEFAULT_TEST_TASK")
    run_tasks "$tasks"

}
