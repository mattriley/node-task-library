#!/bin/bash

function infer.commit {

    function f1 { git.is_git_repository && echo "git-commit"; }
    lib.infer_tasks

}
