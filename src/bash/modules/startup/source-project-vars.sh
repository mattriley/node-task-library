#!/bin/bash
# shellcheck disable=SC1091

function startup.source_project_vars {

    source "./task-vars"
    [ "$ROOT" ] && source "$ROOT/task-vars"

}
