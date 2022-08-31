#!/bin/bash

function tasks.mocha_test {

    set -e

    mocha "$TEST_PATTERN"

}
