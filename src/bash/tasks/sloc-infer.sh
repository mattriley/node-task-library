#!/bin/bash

function f1 { npm.has_dev_dependency "cloc" && echo "cloc-sloc"; }
tasks=$(infer_tasks "sloc")
run_tasks "$tasks"
