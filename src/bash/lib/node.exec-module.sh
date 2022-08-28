function node.exec_module {

    node \
        --experimental-specifier-resolution="node" \
        --input-type="module" \
        - < "$TASK_LIBRARY_ROOT/src/node/bin/$1" "${@:2}"

}
