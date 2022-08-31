#!/bin/bash

function tasks.setup {

    set -e

    lib.run_task dev-links
    lib.run_task install
    lib.run_task husky
    lib.run_task config-gen
    lib.run_task npm-latest

}
