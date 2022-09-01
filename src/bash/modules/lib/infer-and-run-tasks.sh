#!/bin/bash

function lib.infer_and_run_tasks {

    local tasks
    tasks=$(lib.infer_tasks)
    # shellcheck disable=SC2199
    [[ "$@" =~ " --only-first" ]] && tasks=$(list.first "$tasks")
    [ "$tasks" ] && lib.run_tasks "$tasks" && exit 0
    util.warn "No tasks inferred"

}
