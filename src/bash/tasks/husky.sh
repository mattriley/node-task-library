#!/bin/bash

set -e

command="npx task pre-commit"
file="./.husky/pre-commit"
[ -f "$file" ] && grep -q "$command" "$file" && exit

npx husky install
npx husky add "$file" "$command"
