#!/bin/bash
# shellcheck disable=SC2068

function tasks.jest_test {

    jest test --passWithNoTests $@

}
