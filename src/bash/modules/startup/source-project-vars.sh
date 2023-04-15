#!/bin/bash
# shellcheck disable=SC1091

function startup.source_project_vars {

    source "./task-vars"
    [ "$ROOT" ] && [ -f "$ROOT/task-vars" ] && source "$ROOT/task-vars"

}
