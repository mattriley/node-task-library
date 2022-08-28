#!/bin/bash

function f1 { npm.has_dev_dependency "parcel" && echo "parcel-dist"; }
tasks=$(infer_tasks)
run_tasks "$tasks"
