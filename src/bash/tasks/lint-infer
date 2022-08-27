#!/bin/bash

function f1 { has_dev_dependency "eslint" && echo "eslint"; }
tasks=$(infer_tasks "lint")
run_tasks "$tasks"
