#!/bin/bash


function tasks.jest_test {

    # shellcheck disable=2068
    jest test --passWithNoTests $@

}
