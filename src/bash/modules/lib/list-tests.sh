#!/bin/bash

function lib.list_tests {

    node -p "require('fast-glob').sync('$TEST_PATTERN').join(' ')"

}
