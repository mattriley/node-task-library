#!/bin/bash

function f1 { has_dev_dependency "parcel" && echo "parcel-dist"; }
tasks=$(infer_tasks "dist")
run_tasks "$tasks"
