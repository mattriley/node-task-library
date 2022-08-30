#!/bin/bash

function mocha_test {

    set -e

    mocha "$TEST_PATTERN"

}
