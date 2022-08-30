#!/bin/bash

set -e

node.exec_script "jest-config-gen.js" > "$JEST_CONFIG"

git add "$JEST_CONFIG"
