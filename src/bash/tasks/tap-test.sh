#!/bin/bash

set -e

npx tap --no-coverage "$@" "$TESTS" 

# tap seems to not accept glob so passing test path instead
