#!/bin/bash
# shellcheck disable=2153,2086,2317

function tasks.npm_infer_dev {

    startup.load_vars

    function f1 { echo "npm-check-updates eslint husky"; }
    function f2 { bool.is_true "$MODULE_COMPOSER_DETECTED" && [ "$PACKAGE_NAME" != "module-indexgen" ] && echo "module-indexgen"; }
    function f3 { bool.is_true "$WEB_SERVER_DETECTED" && echo "nodemon"; }
    function f4 { bool.is_true "$STATIC_WEBSITE_DETECTED" && echo "serve"; }
    function f5 { fs.file_exists "$README_TEMPLATE" && echo "ejs doctoc cloc"; }
    function f6 { bool.is_true "$SERVERLESS_DETECTED" && echo "serverless aws-sdk"; }
    function f7 { [ "$TEST_RUNNER" ] && [ "$TEST_RUNNER" != "custom" ] && echo "$TEST_RUNNER"; }
    function f8 { bool.is_true "$REACT_DETECTED" && echo "react react-dom"; }
    function f9 { bool.is_true "$REACT_DETECTED" && bool.is_false "$PARCEL_DETECTED" && echo "@babel/core $BABEL_PRESET_ENV"; }
    function f11 { node.is_module_installed "@babel/core" && echo "@babel/node"; }
    function f12 { bool.is_true "$JEST_DETECTED" && echo "jest-environment-jsdom"; }
    function f13 { bool.is_true "$ESLINT_DETECTED" && printf "eslint-plugin-%s " "$ESLINT_PLUGINS"; }

    local modules; modules=$(list.find "$(util.list_of_func)" util.invoke_anon)
    [ -z "$modules" ] && reporter.task_warn "No NPM packages inferred" && return 0

    local absent; absent=$(list.filter "$modules" node.is_module_absent)
    [ -z "$absent" ] && return 0
    npm.install_dev "$absent" && tasks.npm_infer_dev

}
