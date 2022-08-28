#!/bin/bash

# Not yet sure how I could infer these:
# @node-loader/babel

# prod
function f1 { echo "module-composer"; }
function f2 { [ -f "$SERVER" ] && echo "express cors ajv ajv-formats"; }

function callback { 
    local packages
    packages=$($1)
    [ "$packages" ] && npm.install "$packages"
    unset "$1"
}

list.each "$(list_of_func)" "callback"

# dev
function callback { echo "eslint-plugin-$1"; }
# shellcheck disable=SC2153
eslint_plugins=$(OUTSEP=" " list.map "$ESLINT_PLUGINS")

function f1 { echo "module-indexgen npm-check-updates eslint husky"; }
function f2 { [ -f "$README_TEMPLATE" ] && echo "ejs doctoc cloc"; }
function f3 { [ -f "$SERVER" ] && echo "nodemon"; }
function f4 { [ -f "$SERVERLESS_CONFIG" ] && echo "serverless aws-sdk"; }
function f5 { npm.has_dev_dependency "react" && echo "@babel/core @babel/preset-react"; }
function f6 { npm.has_dev_dependency "@babel/core" && echo "@babel/preset-env @babel/node"; }
function f7 { npm.has_dev_dependency "jest" && echo "jest-environment-jsdom"; }
function f8 { npm.has_dev_dependency "eslint" && echo "$eslint_plugins"; }

function callback { 
    local packages
    packages=$($1)
    [ "$packages" ] && npm.install "$packages" -D
    unset "$1"
}

list.each "$(list_of_func)" "callback"
