#!/bin/bash

set -e

npx -p npm-check-updates ncu -u

npm.install && npm.install "task-library" -D
