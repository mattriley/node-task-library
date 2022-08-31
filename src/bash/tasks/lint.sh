#!/bin/bash

function tasks.lint {

    set -e

    lib.run_task lint-infer

}
