#!/bin/bash

function eslint_config_gen {

    set -e

    node.exec_script "eslint-config-gen.js" > "$ESLINT_CONFIG"

    git add "$ESLINT_CONFIG"

}
