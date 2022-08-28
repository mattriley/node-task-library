#!/bin/bash

function f1 { has_dev_dependency "cloc" && echo "cloc-sloc"; }
tasks=$(infer_tasks "sloc")
run_tasks "$tasks"
