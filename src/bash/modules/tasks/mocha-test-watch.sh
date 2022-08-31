#!/bin/bash

function tasks.mocha_test_watch {

    set -e

    mocha "$TEST_PATTERN" --watch --watch-files "$SRC" 

}
