#!/bin/bash
# shellcheck disable=SC1091

function startup.source_project_vars {

    source "./task-vars" 2> /dev/null
    ( cd "$ROOT" && source "./task-vars" 2> /dev/null )
    

}
