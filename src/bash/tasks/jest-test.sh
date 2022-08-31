#!/bin/bash

function tasks.jest_test {

    set -e

    jest test --passWithNoTests "$@"

}
