#!/bin/bash

function setup {

    set -e

    run_task dev-links
    run_task install
    run_task husky
    run_task config-gen
    run_task npm-latest

}
