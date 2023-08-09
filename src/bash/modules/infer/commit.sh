#!/bin/bash
# shellcheck disable=2317

function infer.commit {

    function infer_commit_1 { bool.is_true "$GIT_DETECTED" && echo "git-commit"; }
    core.infer_tasks infer_commit_

}
