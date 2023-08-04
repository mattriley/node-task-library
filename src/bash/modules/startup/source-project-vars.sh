#!/bin/bash
# shellcheck disable=SC1091

function startup.source_project_vars {

    [ -f "./task-vars" ] && source "./task-vars"

}
