#!/bin/bash
# shellcheck disable=2317

function infer.push {

    function infer_push_1 { bool.true "$GIT_DETECTED" && echo "git-push"; }
    core.tasks.infer_tasks infer_push_

}
