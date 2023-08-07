#!/bin/bash
# shellcheck disable=2153,2086,2317

function tasks.npm_infer {

    function f1 { echo "-D npm-check-updates eslint husky"; }
    function f2 { [ -d "$MODULES" ] && [ "$PACKAGE_NAME" != "module-composer" ] && echo "module-composer"; }
    function f3 { [ -d "$MODULES" ] && [ "$PACKAGE_NAME" != "module-indexgen" ] && echo "-D module-indexgen"; }
    function f4 { [ -f "$SERVER" ] && echo "express cors ajv ajv-formats"; }
    function f5 { [ -f "$SERVER" ] && echo "-D nodemon"; }
    function f6 { [ -d "$STATIC" ] && [ ! -d "$SRC" ] && echo "-D serve"; }
    function f7 { [ -f "$README_TEMPLATE" ] && echo "-D ejs doctoc cloc"; }
    function f8 { [ "$SERVERLESS_DETECTED" = "true" ] && echo "-D serverless aws-sdk"; }
    function f9 { [ "$TEST_RUNNER" ] && [ "$TEST_RUNNER" != "custom" ] && echo "-D $TEST_RUNNER"; }
    function f10 { [ "$PACKAGE_NAME" != "task-library" ] && [ "$REACT_DETECTED" = "true" ] && echo "-D react react-dom"; }
    function f11 { node.is_module_installed "react" && echo "-D $BABEL_PRESET_ENV"; }
    function f12 { node.is_module_installed "react" && echo "-D @babel/core"; }
    function f13 { node.is_module_installed "@babel/core" && echo "-D @babel/preset-env @babel/node"; }
    function f14 { node.is_module_installed "jest" && echo "-D jest-environment-jsdom"; }
    function f15 { node.is_module_installed "eslint" && echo "-D $(printf "eslint-plugin-%s " "$ESLINT_PLUGINS")"; }

    function callback {
        local args; args="$("$1")"
        [ "$args" ] && npm.install "$args"
        unset "$1"
    }

    reporter.newline && \
    list.each "$(util.list_of_func)" && \
    reporter.newline

}
