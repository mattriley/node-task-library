#!/bin/bash
# shellcheck disable=2086

function node.exec_babel {

    local node_script="$TASK_LIBRARY_ROOT/src/node/bin/$1"
    fs.file_absent "$node_script" && node_script="$1"
    local node_script_args="${*:2}"
    local config_file; fs.file_exists "$BABEL_CONFIG" && config_file="--config-file $BABEL_CONFIG"
    npx babel-node $config_file "$node_script" $node_script_args

}
