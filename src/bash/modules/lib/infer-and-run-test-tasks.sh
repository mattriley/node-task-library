#!/bin/bash

function lib.infer_and_run_test_tasks {

    local tasks; tasks=$(lib.infer_test_tasks "$@")
    [ "$tasks" ] && lib.run_tasks "$tasks" && return
    ui.warn "No tasks inferred"

}
