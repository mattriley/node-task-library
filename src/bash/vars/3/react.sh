#!/bin/bash

function REACT_DETECTED {
    [ "$PACKAGE_NAME" != "task-library" ] && (node.module_installed "react" || grep -rq "react-dom" "$SRC")
    bool.from_exit_status $?
}

function JSX_DETECTED {
    # NOTE: Wrongly but intentionally assumes React and JSX always go together.
    echo "$REACT_DETECTED"
}

function REACT_TESTING_LIBRARY_DETECTED {
    node.module_installed "@testing-library/react"
    bool.from_exit_status $?
}
