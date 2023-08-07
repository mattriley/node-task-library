#!/bin/bash
# shellcheck disable=2317

function infer.push {

    function infer_push_1 { [ "$GIT_DETECTED" = "true" ] && echo "git-push"; }
    lib.infer_tasks infer_push_

}
