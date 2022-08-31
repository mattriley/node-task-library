#!/bin/bash

function tasks.pre {

    set -e

    lib.run_task pre-commit

}
