#!/bin/bash
# shellcheck disable=SC2153,SC2086

# add task "latest" to call npm-latest

function tasks.npm_infer {

    function f1 { echo "-D npm-check-updates eslint husky"; }
    function f2 { [ -d "$MODULES" ] && echo "module-composer"; }
    function f3 { [ -d "$MODULES" ] && echo "-D module-indexgen"; }
    function f4 { [ -f "$SERVER" ] && echo "express cors ajv ajv-formats"; }
    function f5 { [ -f "$SERVER" ] && echo "-D nodemon"; }
    function f6 { [ -d "$STATIC" ] && [ ! -d "$SRC" ] && echo "-D serve"; }
    function f7 { [ -f "$README_TEMPLATE" ] && echo "-D ejs doctoc cloc"; }
    function f8 { [ -f "$SERVERLESS_CONFIG" ] && echo "-D serverless aws-sdk"; }
    function f9 { npm.has_dev_dependency "react" && echo "-D @babel/core @babel/preset-react"; }
    function f10 { npm.has_dev_dependency "@babel/core" && echo "-D @babel/preset-env @babel/node"; }
    function f11 { npm.has_dev_dependency "jest" && echo "-D jest-environment-jsdom"; }
    function f12 { npm.has_dev_dependency "eslint" && echo "-D $(printf "eslint-plugin-%s " "$ESLINT_PLUGINS")"; }

    function callback {
        local args; args="$("$1")"
        [ "$args" ] && npm.install "$args"
        unset "$1"
    }

    reporter.newline && \
    list.each "$(util.list_of_func)" && \
    reporter.newline

}
