#!/bin/bash

exec_node_script "eslint-config-gen.js" > "$ESLINT_CONFIG"

git add "$ESLINT_CONFIG"
