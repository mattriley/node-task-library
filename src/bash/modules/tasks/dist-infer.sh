#!/bin/bash

function tasks.dist_infer {

    function f1 { npm.has_dev_dependency "parcel" && echo "parcel-dist"; }
    lib.infer_and_run_tasks

}
