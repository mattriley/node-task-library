#!/bin/bash

function tasks.lint_infer {

    

    function f1 { npm.has_dev_dependency "eslint" && echo "eslint"; }
    lib.infer_and_run_tasks

}
