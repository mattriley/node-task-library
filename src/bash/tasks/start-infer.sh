#!/bin/bash

function tasks.start_infer {

    set -e

    function f1 { lib.npm.has_dev_dependency "nodemon" && echo "nodemon"; }
    function f2 { lib.npm.has_dev_dependency "parcel" && echo "parcel-serve"; }
    lib.run_first_task "$(infer_tasks)"

}
