#!/bin/bash

function f1 { npm.has_dev_dependency "eslint" && echo "eslint"; }
tasks=$(infer_tasks)
run_tasks "$tasks"
