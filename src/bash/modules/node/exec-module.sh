#!/bin/bash

function node.exec_module {

    node \
        --experimental-specifier-resolution="node" \
        --input-type="module" \
        --no-warnings \
        - < "$TASK_LIBRARY_ROOT/src/node/bin/$1" "${@:2}"

}
