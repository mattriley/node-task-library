#!/bin/bash


function tasks.node_test {

    node --test --test-reporter=spec "$(lib.list_tests)"

}
