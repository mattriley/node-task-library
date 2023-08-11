#!/bin/bash
# shellcheck disable=2317

function infer.commit {

    function infer_commit_1 { bool.is_true "$GIT_DETECTED" && echo "git-commit"; }
    task_runner.infer_tasks infer_commit_

}
