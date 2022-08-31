#!/bin/bash

function tasks.install {

    set -e

    lib.run_task install-brew-packages
    lib.run_task install-npm-packages

}
