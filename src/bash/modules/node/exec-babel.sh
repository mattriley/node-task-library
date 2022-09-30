#!/bin/bash
# shellcheck disable=SC2086

function node.exec_babel {

    local node_script="$TASK_LIBRARY_ROOT/src/node/bin/$1"
    [ ! -f "$node_script" ] && node_script="$1"
    local node_script_args="${*:2}"
    npx babel-node --config-file "$BABEL_CONFIG" "$node_script" $node_script_args

}
