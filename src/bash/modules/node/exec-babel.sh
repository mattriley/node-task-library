#!/bin/bash
# shellcheck disable=SC2086

function node.exec_babel {

    local node_script="$TASK_LIBRARY_ROOT/src/node/bin/$1"
    [ ! -f "$node_script" ] && node_script="$1"
    local node_script_args="${*:2}"
    local config_file_option; [ -f "./babel.config.js" ] && config_file_option="--config-file ./babel.config.js"
    npx babel-node -- $config_file_option "$node_script" $node_script_args

}
