#!/bin/bash

function tasks.barrel_gen {

    set -e

    lib.run_task indexgen "$@"

}
