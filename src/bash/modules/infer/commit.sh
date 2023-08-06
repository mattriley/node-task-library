#!/bin/bash
# shellcheck disable=2317

function infer.commit {

    function infer_commit_1 { git.is_git_repository && echo "git-commit"; }
    lib.infer_tasks infer_commit_

}
