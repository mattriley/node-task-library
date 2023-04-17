#!/bin/bash


function tasks.node_test {

    local result=0;

    # shellcheck disable=SC2317
    function callback { ! node.exec_script "$1" && result=1; }
    
    local test_files; test_files=$(node -p "require('fast-glob').sync('$TEST_PATTERN').join('$SEP')") && \
    list.each "$test_files"
    return $result;

}
