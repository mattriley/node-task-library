#!/bin/bash
# shellcheck disable=2317

function infer.push {

    function infer_push_1 { git.is_git_repository && echo "git-push"; }
    lib.infer_tasks infer_push_

}
