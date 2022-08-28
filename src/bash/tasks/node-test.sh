#!/bin/bash
  
test_files=$(node -p "require('fast-glob').sync('$TEST_PATTERN').join('$SEP')")
function callback { node --experimental-specifier-resolution=node "$1"; }
list.each "$test_files"
