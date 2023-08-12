#!/bin/bash
# shellcheck disable=2317

function infer.lint {

    function infer_lint_1 { bool.true "$ESLINT_DETECTED" && echo "eslint"; }
    function infer_lint_2 { bool.true "$SHELLCHECK_DETECTED" && echo "shellcheck"; }
    task_runner.infer_tasks infer_lint_

}
