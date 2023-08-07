#!/bin/bash


function tasks.node_test {

    # shellcheck disable=2046
    node --test --test-reporter=spec $(lib.list_tests)

}
