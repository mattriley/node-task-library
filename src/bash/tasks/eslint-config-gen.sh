#!/bin/bash

node.exec_script "eslint-config-gen.js" > "$ESLINT_CONFIG"

git add "$ESLINT_CONFIG"
