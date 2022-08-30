#!/bin/bash

function start_infer {

    set -e

    function start_infer { npm.has_dev_dependency "nodemon" && echo "nodemon"; }
    function start_infer { npm.has_dev_dependency "parcel" && echo "parcel-serve"; }
    run_first_task "$(infer_tasks)"

}
