#!/bin/bash

function tasks.lint_infer {

    set -e

    function f1 { lib.npm.has_dev_dependency "eslint" && echo "eslint"; }
    lib.run_tasks "$(lib.infer_tasks)"

}
