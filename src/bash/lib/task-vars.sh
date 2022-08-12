#!/bin/bash

function SEP {
    echo " | "
}

function IFS {
    echo "$SEP"
}

function PRINT_VARS {
    echo "DISPLAY_NAME | PACKAGE_NAME | STAGE | PORT"
}

function STAGE {
    echo "local"
}

function TARGET {
    echo ""
}

function VERSION_DATE {
    echo $(date)
}

function PACKAGE_JSON {
    echo "./package.json"
}

function PACKAGE_NAME {
    echo $(package name)
}

function DISPLAY_NAME {
    echo "$PACKAGE_NAME"
}

function AUTHOR_NAME {
    package_author_name="$(package author.name)"
    [ "$package_author_name" ] && echo "$package_author_name" && return 0
    echo "$MY_AUTHOR_NAME"
}

function AUTHOR_EMAIL {
    package_author_email="$(package author.email)"
    [ "$package_author_email" ] && echo "$package_author_email" && return 0
    echo "$MY_AUTHOR_EMAIL"
}

function AUTHOR_URL {
    package_author_url="$(package author.url)"
    [ "$package_author_url" ] && echo "$package_author_url" && return 0
    echo "$MY_AUTHOR_URL"
}

function WEB_HOST_NAME {
    echo ""
}

function WEB_BASE_PATH {
    echo ""
}

function WEB_URL {
    [[ $WEB_BASE_PATH == /* ]] && web_base_path="$WEB_BASE_PATH" || web_base_path="/$WEB_BASE_PATH"
    [ "$WEB_HOST_NAME" ] && [ "$WEB_BASE_PATH" ] && echo "https://$WEB_HOST_NAME$WEB_BASE_PATH" && return 0
    [ "$WEB_HOST_NAME" ] && echo "https://$WEB_HOST_NAME"
}

function TASKS {
    echo "./tasks"
}

function TASK_PATHS {
    echo "$TASKS | $TASK_LIBRARY_ROOT/src/bash/tasks"
}

function NODE_MODULES {
    echo "./node_modules"
}

function NODE_MODULES_LINKS {
    echo "./node_modules_links"
}

function NODE_MODULES_LINK_PACKAGES {
    echo "module-composer | module-indexgen | task-library"
}

function ITERMOCIL_CONFIG {
    echo "./itermocil.yml"
}

function ITERMOCIL_TASKS {
    echo "edit | test-watch | barrel-gen-watch | start"
}

function GIT_IGNORE {
    echo "./.gitignore"
}

function GIT_BRANCH {
    echo $(git branch --show-current)
}

function SRC {
    echo "./src"
}

function SERVER {
    echo "$SRC/server.js"
}

function SERVER_PORT {
    port "$PACKAGE_NAME"
}

function PORT {
    echo "$SERVER_PORT"
}

function MODULES {
    echo "$SRC/modules"
}

function TESTS {
    echo "./tests"
}

function TEST_PATTERN {
    echo "$TESTS/**/*.test.{js,mjs}"
}

function TESTING {
    echo "./testing"
}

function TEST_WATCH_PATHS {
    function predicate { [ -d "$1" ]; }
    filter "$SRC | $TESTS | $TESTING" predicate
    unset predicate
}

function SUPPORTED_TEST_RUNNERS {
    echo "jest | mocha | tap | tape | zora"
}

function TEST_RUNNER {
    function predicate { has_dev_dependency "$1"; } 
    find "$SUPPORTED_TEST_RUNNERS" predicate
    unset predicate
}

function BARREL_PATHS {
    echo "$TEST_WATCH_PATHS"
}

function COVERAGE {
    echo "./coverage"
}

function COVERAGE_JSON_SUMMARY {
    echo "$COVERAGE/coverage-summary.json"
}

function METRICS {
    echo "./metrics"
}

function METRICS_COV {
    echo "$METRICS/cov.json"
}

function METRICS_LOC {
    echo "$METRICS/loc.json"
}

function METRICS_SUMMARY {
    echo "$METRICS/metrics-summary.json"
}

function SERVERLESS_CONFIG {
    echo "./serverless.yml"
}

function BABEL_CONFIG {
    echo "./babel.config.js"
}

function JEST_CONFIG {
    echo "./jest.config.json"
}

function ESLINT_CONFIG {
    echo "./.eslintrc.json"
}

function ESLINT_PATHS {
    # eslint doesn't like empty directories
    function predicate { [ "$(ls -A $1)" ]; } 
    filter "$TEST_WATCH_PATHS" predicate
    unset predicate
}

function CONDITIONAL_ESLINT_PLUGINS {
    echo "react | jest | mocha | tap | tape"
}

function ESLINT_PLUGINS {
    echo -n "import | "
    function predicate { has_dev_dependency "$1"; }
    filter "$CONDITIONAL_ESLINT_PLUGINS" predicate
    unset predicate
}

[[ $(git config --get remote.origin.url) =~ github\.com:(.+)\/(.+)\.git$ ]]

function GITHUB_USER_NAME {
    echo ${BASH_REMATCH[1]}
}

function GITHUB_REPO_NAME {
    echo ${BASH_REMATCH[2]}
}

function GITHUB_REPO_PATH {
    echo "$GITHUB_USER_NAME/$GITHUB_REPO_NAME"
}

function GITHUB_USER_URL {
    echo "https://github.com/$GITHUB_USER_NAME"
}

function GITHUB_REPO_URL {
    echo "$GITHUB_USER_URL/$GITHUB_REPO_NAME"
}

function GITHUB_ISSUES_URL {
    echo "$GITHUB_REPO_URL/issues"
}

function GITHUB_PAGES_URL {
    echo "https://$GITHUB_USER_NAME.github.io/$GITHUB_REPO_NAME"
}

function GITHUB_PAGES_PATH {
    echo "./docs"
}

function GITHUB_PAGES_CNAME {
    [[ ! "$WEB_HOST_NAME" == *".github.io" ]] && echo "$WEB_HOST_NAME"
}

function ISSUES_URL {
    echo "$GITHUB_ISSUES_URL"
}

function ISSUES_EMAIL {
    echo "$AUTHOR_EMAIL"
}

function SOURCE_CODE_URL {
    echo "$GITHUB_REPO_URL"
}

function README {
    echo "./README.md"
}

function README_TEMPLATE {
    echo "./README-TEMPLATE.md"
}

function README_TITLE {
    echo "$DISPLAY_NAME"
}

function README_BASE_URL {
    echo "$GITHUB_REPO_URL"
}

function README_GEN {
    echo "$TASK_LIBRARY_ROOT/src/node/bin/readme-gen.js"
}

function INDEX_HTML_TEMPLATE {
    echo "$SRC/index.template.html"
}

function INDEX_HTML {
    echo "$SRC/index.html"
}

function INDEX_HTML_TITLE {
    echo "$DISPLAY_NAME"
}

function INDEX_HTML_DESCRIPTION {
    echo $(package description)
}

function INDEX_HTML_AUTHOR {
    echo "$AUTHOR_NAME"
}

function INDEX_HTML_URL {
    [ "$WEB_URL" ] && echo "$WEB_URL"
}

function STATIC {
    echo "./static"
}

function DATA {
    echo "./data"
}

function DIST_BASE {
    echo "./dist"
}

function DIST {
    [ "$STAGE" ] && echo "$DIST_BASE-$STAGE" || echo "$DIST_BASE"
}

function DIST_FLATTEN {
    echo "false"
}

function PARCEL_OPTIONS {
    echo "$INDEX_HTML"
}

function NPM_BUMP_VERSION {
    echo "minor"
}

function COV_BRANCHES {
    echo "100"
}

function COV_LINES {
    echo "100"
}

function COV_FUNCTIONS {
    echo "100"
}

function COV_STATEMENTS {
    echo "100"
}