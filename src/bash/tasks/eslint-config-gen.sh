#!/bin/bash

function tasks.eslint_config_gen {

    set -e

    lib.node.exec_script "eslint-config-gen.js" > "$ESLINT_CONFIG"

    git add "$ESLINT_CONFIG"

}
