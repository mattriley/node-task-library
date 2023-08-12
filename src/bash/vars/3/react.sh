#!/bin/bash

function REACT_DETECTED {
    [ "$PACKAGE_NAME" != "task-library" ] && (node.is_module_installed "react" || grep -rq "react-dom" "$SRC")
    bool.from_exit_status $?
}
