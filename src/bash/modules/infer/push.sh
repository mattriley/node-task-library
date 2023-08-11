#!/bin/bash
# shellcheck disable=2317

function infer.push {

    function infer_push_1 { bool.is_true "$GIT_DETECTED" && echo "git-push"; }
    task_runner.infer_tasks infer_push_

}
