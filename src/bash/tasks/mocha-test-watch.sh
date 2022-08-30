#!/bin/bash

function mocha_test_watch {

    set -e

    mocha "$TEST_PATTERN" --watch --watch-files "$SRC" 

}
