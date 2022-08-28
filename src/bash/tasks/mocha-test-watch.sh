#!/bin/bash

npx mocha "$TEST_PATTERN" --watch --watch-files "$SRC" 
