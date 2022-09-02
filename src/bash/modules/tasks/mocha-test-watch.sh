#!/bin/bash

function tasks.mocha_test_watch {

    

    mocha "$TEST_PATTERN" --watch --watch-files "$SRC" 

}
