#!/bin/bash
# shellcheck disable=2153,2086,2317

function tasks.npm_infer {

    core.vars.load_vars

    function f1 { bool.true "$MODULE_COMPOSER_DETECTED" && echo "module-composer"; }
    function f2 { bool.true "$WEB_SERVER_DETECTED" && echo "express cors ajv ajv-formats"; }

    local modules; modules=$(list.find_invoke "$(fp.list_of_func)" npm.filter_modules)
    [ -z "$modules" ] && core.tasks.run_task npm_infer_dev && return $?
    npm.install "$modules"
    tasks.npm_infer

}
