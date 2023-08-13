#!/bin/bash
# shellcheck disable=2153,2086,2317

function tasks.npm_infer {

    var_loader.load_vars

    function f1 { bool.true "$MODULE_COMPOSER_DETECTED" && echo "module-composer"; }
    function f2 { bool.true "$WEB_SERVER_DETECTED" && echo "express cors ajv ajv-formats"; }

    local modules; modules=$(list.find_invoke "$(util.list_of_func)" npm.filter_modules)
    [ -z "$modules" ] && task_runner.run_task npm_infer_dev && return $?
    npm.install "$modules"
    tasks.npm_infer

}
