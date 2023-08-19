#!/bin/bash

function tasks.eslint_config {

    node.exec_script "eslint-config.js" > "$ESLINT_CONFIG" && \
    git add "$ESLINT_CONFIG"

}
