#!/bin/bash

echo "$(exec_node_script "package-gen.js")" > "$PACKAGE_JSON"

git add "$PACKAGE_JSON"
