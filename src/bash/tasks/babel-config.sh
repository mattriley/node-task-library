#!/bin/bash

function tasks.babel_config {

    cp "$TASK_LIBRARY_ROOT/src/node/configs/$BABEL_CONFIG" "$BABEL_CONFIG" && \
    git add "$BABEL_CONFIG"

}
