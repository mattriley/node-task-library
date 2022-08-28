#!/bin/bash

command="npx task pre-commit"
file="./.husky/pre-commit"
[ -f "$file" ] && grep -q "$command" "$file" && exit 0

npx husky install
npx husky add "$file" "$command"
