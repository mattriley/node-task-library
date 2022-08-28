#!/bin/bash

function f1 { is_on_npm && echo "npm-deploy"; }
function f2 { is_on_ghp && echo "github-pages-deploy"; }
function f3 { is_on_sls && echo "sls-deploy"; }
tasks=$(infer_tasks)
run_tasks "$tasks"
