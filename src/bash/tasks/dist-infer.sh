#!/bin/bash

function f1 { npm.has_dev_dependency "parcel" && echo "parcel-dist"; }
run_tasks "$(infer_tasks)"
