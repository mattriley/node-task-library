#!/bin/bash

function tasks.default {

    set -e

    lib.run_task pre-commit

}
