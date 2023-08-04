#!/bin/bash
# shellcheck disable=1091

function startup.source_project_vars {

    [ -f "./task-vars" ] && source "./task-vars"

}
