#!/bin/bash

tasks=$(infer_test_task "" "$DEFAULT_TEST_TASK")
run_tasks "$tasks"

