#!/bin/bash
# shellcheck disable=1091

function var_loader.source_project_vars {

    fs.file_exists "./task-vars" && source "./task-vars"

}
