#!/bin/bash

function lint_infer {

    set -e

    function lint_infer { npm.has_dev_dependency "eslint" && echo "eslint"; }
    run_tasks "$(infer_tasks)"

}
