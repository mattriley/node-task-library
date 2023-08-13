#!/bin/bash
# shellcheck disable=2153,2086,2317

function tasks.npm_infer_dev {

    var_loader.load_vars

    function f1 { echo "npm-check-updates eslint husky"; }
    function f2 { bool.true "$MODULE_COMPOSER_DETECTED" && echo "module-indexgen"; }
    function f3 { bool.true "$WEB_SERVER_DETECTED" && echo "nodemon"; }
    function f4 { bool.true "$STATIC_WEBSITE_DETECTED" && echo "serve"; }
    function f5 { fs.file_exists "$README_TEMPLATE" && echo "ejs doctoc cloc"; }
    function f6 { bool.true "$SERVERLESS_DETECTED" && echo "serverless aws-sdk"; }
    function f7 { [ "$TEST_RUNNER" ] && [ "$TEST_RUNNER" != "custom" ] && echo "$TEST_RUNNER"; }
    function f8 { bool.true "$REACT_DETECTED" && echo "react react-dom"; }
    function f9 { bool.true "$REACT_DETECTED" && bool.false "$PARCEL_DETECTED" && echo "@babel/core $BABEL_PRESET_ENV"; }
    function f11 { node.module_installed "@babel/core" && echo "@babel/node"; }
    function f12 { bool.true "$JEST_DETECTED" && echo "jest-environment-jsdom"; }
    function f13 { bool.true "$ESLINT_DETECTED" && printf "eslint-plugin-%s " "$ESLINT_PLUGINS"; }

    local modules; modules=$(list.find_invoke "$(util.list_of_func)" npm.filter_modules)
    [ -z "$modules" ] && return 0
    npm.install_dev "$modules"
    tasks.npm_infer_dev

}
