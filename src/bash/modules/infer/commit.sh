#!/bin/bash
# shellcheck disable=2317

function infer.commit {

    function infer_commit_1 { [ "$GIT_DETECTED" = "true" ] && echo "git-commit"; }
    lib.infer_tasks infer_commit_

}
