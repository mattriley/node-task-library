#!/bin/bash

set -e

npx task config-gen
npx task code-gen
npx task lint --fix
npx task cov
npx task sloc
npx task metrics-summary
npx task readme-gen

git add .
