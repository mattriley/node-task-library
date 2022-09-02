#!/bin/bash

function tasks.start_infer {

    

    function f1 { npm.has_dev_dependency "nodemon" && echo "nodemon"; }
    function f2 { npm.has_dev_dependency "parcel" && echo "parcel-serve"; }
    lib.infer_and_run_tasks --only-first

}
