#!/bin/bash


function tasks.jest_test {

    # shellcheck disable=SC2068
    jest test --passWithNoTests $@

}
