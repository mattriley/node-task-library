#!/bin/bash
# shellcheck disable=1091

function core.vars.source_project_vars {

    fs.file_exists "./task-vars" && source "./task-vars"

}
