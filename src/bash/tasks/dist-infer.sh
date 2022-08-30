#!/bin/bash

function dist_infer {

    set -e

    function dist_infer { npm.has_dev_dependency "parcel" && echo "parcel-dist"; }
    run_tasks "$(infer_tasks)"

}
