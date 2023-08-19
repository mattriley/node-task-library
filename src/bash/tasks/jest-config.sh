#!/bin/bash

function tasks.jest_config {

    node.exec_script "jest-config.js" > "$JEST_CONFIG" && \
    git add "$JEST_CONFIG"

}
