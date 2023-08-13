#!/bin/bash
# shellcheck disable=1090,1091

set -o pipefail

export TASK_LIBRARY_ROOT="./node_modules/task-library"
export ANON_FUNC_PATTERN="^f[0-9]+"
export IFS=$'\n| '

function load_module {
    local module_path="$1"
    for script_path in "$module_path"/*.sh; do source "$script_path"; done
}

function on_term {
    exit 1
}

function on_exit {
    local exit_code="$?"
    local failure="${RED}FAILURE${NORM}"
    local success="${GREEN}SUCCESS${NORM}"
    reporter.newline
    [ "$exit_code" -gt 0 ] && echo "$failure" && exit 1
    [ "$IS_SUBTASK" ] && return
    echo "$success"
}


function main {

    local bash_dir="$TASK_LIBRARY_ROOT/src/bash"
    for module_path in "$bash_dir/modules"/*; do load_module "$module_path"; done
    load_module "$bash_dir/tasks"

    { [ "$VARS" ] && export IS_SUBTASK="true"; } || core.vars.load_vars

    trap on_term SIGTERM SIGINT
    trap on_exit EXIT

    local task_name=${1:-$DEFAULT_TASK}
    local task_args=${*:2}
    [ ! "$task_name" = "vars" ] && [ -z "$IS_SUBTASK" ] && tasks.print_vars
    core.tasks.run_task "$task_name" "$task_args"

}
