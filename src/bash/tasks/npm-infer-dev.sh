#!/bin/bash
# shellcheck disable=2153,2086,2317

function tasks.npm_infer_dev {

    core.vars.load_vars

    function f1 { echo "npm-check-updates eslint husky"; }
    function f2 { bool.true "$MODULE_COMPOSER_DETECTED" && echo "module-indexgen"; }
    function f3 { bool.true "$WEB_SERVER_DETECTED" && echo "nodemon"; }
    function f4 { bool.true "$STATIC_WEBSITE_DETECTED" && echo "serve"; }
    function f5 { fs.file_exists "$README_TEMPLATE" && echo "ejs doctoc cloc"; }
    function f6 { bool.true "$SERVERLESS_DETECTED" && echo "serverless aws-sdk"; }
    function f7 { [ "$TEST_RUNNER" ] && [ "$TEST_RUNNER" != "custom" ] && echo "$TEST_RUNNER"; }

    # React support.
    function f8 { bool.true "$REACT_DETECTED" && echo "react react-dom"; }

    # JSX support in the absence of Parcel; Parcel supports JSX out of the box.
    function f9 { bool.true "$JSX_DETECTED" && bool.false "$PARCEL_DETECTED" && echo "@babel/core @babel/preset-env"; }

    # Babel support for Node CLI.
    function f10 { node.module_installed "@babel/core" && echo "@babel/node"; }

    # JSX support for test runners.
    function f11 { bool.true "$TESTS_DETECTED" && bool.true "$JSX_DETECTED" && echo "@babel/core @babel/preset-env"; }

    # JSDOM support for React+Jest.
    function f12 { bool.true "$TESTS_DETECTED" && bool.true "$REACT_DETECTED" && bool.true "$JEST_DETECTED" && echo "jest-environment-jsdom"; }

    # JSDOM support for React without Jest.
    function f13 { bool.true "$TESTS_DETECTED" && bool.true "$REACT_DETECTED" && bool.false "$JEST_DETECTED" && echo "jsdom global-jsdom"; }

    # Testing Library for React.
    function f14 { bool.true "$TESTS_DETECTED" && bool.true "$REACT_DETECTED" && echo "@testing-library/react"; }

    # User Event for Testing Library.
    function f15 { bool.true "$TESTING_LIBRARY_DETECTED" && echo "@testing-library/user-event"; }

    # Jest DOM support for custom DOM element matchers for Jest.
    function f16 { bool.true "$TESTING_LIBRARY_DETECTED" && bool.true "$JEST_DETECTED" && echo "@testing-library/jest-dom"; }

    # ESLint plugins.
    function f17 { bool.true "$ESLINT_DETECTED" && printf "eslint-plugin-%s " "$ESLINT_PLUGINS"; }

    local modules; modules=$(list.find_invoke "$(fp.list_of_func)" npm.filter_modules)
    [ -z "$modules" ] && return 0
    npm.install_dev "$modules"
    tasks.npm_infer_dev

}
