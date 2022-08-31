#!/bin/bash

function tasks.sloc_infer {

    set -e

    function sloc_infer { lib.npm.has_dev_dependency "cloc" && echo "cloc-sloc"; }
    lib.run_tasks "$(lib.infer_tasks)"

}
