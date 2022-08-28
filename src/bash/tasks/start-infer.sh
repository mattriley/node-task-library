#!/bin/bash

function f1 { npm.has_dev_dependency "nodemon" && echo "nodemon"; }
function f2 { npm.has_dev_dependency "parcel" && echo "parcel-serve"; }
tasks=$(infer_tasks)
run_first_task "$tasks"
