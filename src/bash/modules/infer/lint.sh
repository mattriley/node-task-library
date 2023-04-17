#!/bin/bash
# shellcheck disable=SC2317

function infer.lint {

    function f1 { npm.has_dev_dependency "eslint" && echo "eslint"; }
    function f2 { which -s shellcheck && echo "shellcheck"; }
    lib.infer_tasks

}
