#!/bin/bash
# shellcheck disable=SC2086

function node.exec_infer {

    if npm.has_dev_dependency "@node-loader/babel"; then
        export NODE_OPTIONS="--experimental-loader @node-loader/babel --no-warnings"
        node.exec_script "$@"
        return
    fi

    if npm.has_dev_dependency "@babel/node"; then
        node.exec_babel "$@"
        return
    fi

    node.exec_script "$@"

}
