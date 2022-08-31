#!/bin/bash

function node.exec_script {

    local node_script="$TASK_LIBRARY_ROOT/src/node/bin/$1"
    [ ! -f "$node_script" ] && node_script="$1"
    local node_command="node"
    local node_options=""

    if npm.has_dev_dependency "@node-loader/babel"; then
        node_options="--experimental-loader @node-loader/babel"
    elif npm.has_dev_dependency "@babel/core"; then
        node_command="babel-node"
    fi

    # shellcheck disable=SC2086
    "$node_command" $node_options "$node_script" "${@:2}"

}
