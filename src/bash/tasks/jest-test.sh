#!/bin/bash

function jest_test {

    set -e

    jest test --passWithNoTests "$@"

}
