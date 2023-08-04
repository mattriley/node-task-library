#!/bin/bash
# shellcheck disable=2086

function node.exec_script {

    local node_script="$TASK_LIBRARY_ROOT/src/node/bin/$1"
    [ ! -f "$node_script" ] && node_script="$1"
    local node_script_args="${*:2}"
    node "$node_script" $node_script_args

}
