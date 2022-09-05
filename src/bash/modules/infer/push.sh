#!/bin/bash

function infer.push {

    function f1 { git.is_git_repository && echo "git-push"; }
    lib.infer_tasks

}
