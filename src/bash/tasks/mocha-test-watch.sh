#!/bin/bash

set -e

npx mocha "$TEST_PATTERN" --watch --watch-files "$SRC" 
