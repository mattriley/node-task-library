#!/bin/bash

function tasks.jest_config_gen {

    node.exec_script "jest-config-gen.js" > "$JEST_CONFIG" && \
    git add "$JEST_CONFIG"

}
