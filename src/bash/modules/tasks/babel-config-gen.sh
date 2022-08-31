#!/bin/bash

function tasks.babel_config_gen {

    set -e

    cp "$TASK_LIBRARY_ROOT/src/node/configs/$BABEL_CONFIG" "$BABEL_CONFIG"

    git add "$BABEL_CONFIG"

}
