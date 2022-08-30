#!/bin/bash

function sloc_infer {

    set -e

    function sloc_infer { npm.has_dev_dependency "cloc" && echo "cloc-sloc"; }
    run_tasks "$(infer_tasks)"

}
