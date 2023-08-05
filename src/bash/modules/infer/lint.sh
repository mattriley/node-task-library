#!/bin/bash
# shellcheck disable=2317

function infer.lint {

    function f1 { node.is_module_installed "eslint" && echo "eslint"; }
    function f2 { which -s shellcheck && echo "shellcheck"; }
    lib.infer_tasks

}
