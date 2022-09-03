#!/bin/bash

function tasks.node_test {

    local test_files; test_files=$(node -p "require('fast-glob').sync('$TEST_PATTERN').join('$SEP')")
    function callback { node.exec_script "$1"; }
    list.each "$test_files"

}
