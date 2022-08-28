#!/bin/bash

echo "$(node.exec_script "package-gen.js")" > "$PACKAGE_JSON"

git add "$PACKAGE_JSON"
