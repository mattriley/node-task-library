#!/bin/bash

function tasks.sloc_infer {

    function sloc_infer { npm.has_dev_dependency "cloc" && echo "cloc-sloc"; }
    lib.infer_and_run_tasks

}
