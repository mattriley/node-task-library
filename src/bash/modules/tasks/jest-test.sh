#!/bin/bash

function tasks.jest_test {

    jest test --passWithNoTests "$@"

}
