#!/bin/bash
# shellcheck disable=2086

function node.exec_infer {

    if node.module_installed "@node-loader/babel"; then
        export NODE_OPTIONS="$NODE_OPTIONS --experimental-loader @node-loader/babel --no-warnings"
        node.exec_script "$@"
        return $?
    fi

    if node.module_installed "@babel/node"; then
        node.exec_babel "$@"
        return $?
    fi

    node.exec_script "$@"

}
