#!/bin/bash
# shellcheck disable=2317

function infer.lint {

    function infer_lint_1 { node.is_module_installed "eslint" && echo "eslint"; }
    function infer_lint_2 { which -s shellcheck && echo "shellcheck"; }
    task_runner.infer_tasks infer_lint_

}
