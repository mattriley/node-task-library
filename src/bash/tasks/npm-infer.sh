#!/bin/bash
# shellcheck disable=2153,2086,2317

function tasks.npm_infer {

    var_loader.load_vars

    function f1 { bool.true "$MODULE_COMPOSER_DETECTED" && [ "$PACKAGE_NAME" != "module-composer" ] && echo "module-composer"; }
    function f2 { bool.true "$WEB_SERVER_DETECTED" && echo "express cors ajv ajv-formats"; }

    local modules; modules=$(list.find "$(util.list_of_func)" util.invoke_anon)
    [ -z "$modules" ] && reporter.task_warn "No NPM packages inferred" && return 0

    local absent; absent=$(list.reject "$modules" node.module_installed)
    [ -n "$absent" ] && npm.install "$absent"

    tasks.npm_infer_dev

}
