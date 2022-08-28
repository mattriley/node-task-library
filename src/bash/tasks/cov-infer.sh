#!/bin/bash

tasks=$(infer_test_task "cov" "$DEFAULT_COV_TASK")
run_tasks "$tasks"
