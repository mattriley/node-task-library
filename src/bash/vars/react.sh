#!/bin/bash

function REACT_DETECTED {
    grep -rq "react-dom" "$SRC" && echo "true" || echo "false"
}
