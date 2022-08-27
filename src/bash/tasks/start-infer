#!/bin/bash

function f1 { has_dev_dependency "nodemon" && echo "nodemon"; }
function f2 { has_dev_dependency "parcel" && echo "parcel-serve"; }
tasks=$(infer_tasks "start")
run_first_task "$tasks"
