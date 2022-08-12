function node_script {
    node "$TASK_LIBRARY_ROOT/src/node/bin/$1" "${@:2}"
}
