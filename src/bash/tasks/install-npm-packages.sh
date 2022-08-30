#!/bin/bash

function install_npm_packages {

    set -e

    # prod
    function install_npm_packages { echo "module-composer"; }
    function install_npm_packages { [ -f "$SERVER" ] && echo "express cors ajv ajv-formats"; }

    function install_npm_packages { 
        local packages
        packages=$($1)
        [ "$packages" ] && npm.install "$packages"
        unset "$1"
    }

    list.each "$(list_of_func)" "callback"

    # dev
    function install_npm_packages { echo "eslint-plugin-$1"; }
    # shellcheck disable=SC2153
    eslint_plugins=$(list.map "$ESLINT_PLUGINS")

    function install_npm_packages { echo "module-indexgen npm-check-updates eslint husky"; }
    function install_npm_packages { [ -f "$README_TEMPLATE" ] && echo "ejs doctoc cloc"; }
    function install_npm_packages { [ -f "$SERVER" ] && echo "nodemon"; }
    function install_npm_packages { [ -f "$SERVERLESS_CONFIG" ] && echo "serverless aws-sdk"; }
    function install_npm_packages { npm.has_dev_dependency "react" && echo "@babel/core @babel/preset-react"; }
    function install_npm_packages { npm.has_dev_dependency "@babel/core" && echo "@babel/preset-env @babel/node"; }
    function install_npm_packages { npm.has_dev_dependency "jest" && echo "jest-environment-jsdom"; }
    function install_npm_packages { npm.has_dev_dependency "eslint" && echo "$eslint_plugins"; }

    function install_npm_packages { 
        local packages
        packages=$($1)
        [ "$packages" ] && npm.install "$packages" -D
        unset "$1"
    }

    list.each "$(list_of_func)" "callback"

}
