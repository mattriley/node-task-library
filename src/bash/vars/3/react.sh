#!/bin/bash

function REACT_DETECTED {
    [ "$PACKAGE_NAME" != "task-library" ] && grep -rq "react-dom" "$SRC" && echo "true" || echo "false"
}
