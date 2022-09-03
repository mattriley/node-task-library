#!/bin/bash

function lib.infer_and_run_tasks {

    local tasks; tasks=$(lib.infer_tasks)
    [[ "$*" =~ "--only-first" ]] && tasks=$(list.first "$tasks")
    [ "$tasks" ] && lib.run_tasks "$tasks" && return 0
    ui.task_warn "No tasks inferred"

}
