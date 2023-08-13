#!/bin/bash
# shellcheck disable=2317

function infer.commit {

    function infer_commit_1 { bool.true "$GIT_DETECTED" && echo "git-commit"; }
    core.tasks.infer_tasks infer_commit_

}
