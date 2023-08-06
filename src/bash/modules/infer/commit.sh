#!/bin/bash
# shellcheck disable=2317

function infer.commit {

    function f1 { git.is_git_repository && echo "git-commit"; }
    lib.infer_tasks

}
