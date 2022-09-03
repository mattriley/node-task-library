#!/bin/bash

function tasks.node_test {

    local test_files; test_files=$(node -p "require('fast-glob').sync('$TEST_PATTERN').join('$SEP')")
    function callback { node --experimental-specifier-resolution=node "$1"; }
    list.each "$test_files"

}
