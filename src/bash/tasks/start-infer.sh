#!/bin/bash

function f1 { npm.has_dev_dependency "nodemon" && echo "nodemon"; }
function f2 { npm.has_dev_dependency "parcel" && echo "parcel-serve"; }
run_first_task "$(infer_tasks)"
