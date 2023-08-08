#!/bin/bash

function BARREL_PATHS {
    list.filter "$MODULES | $TESTING_MODULES" fs.dir_exists
    # avoid $SRC $TESTING $TESTS
}
