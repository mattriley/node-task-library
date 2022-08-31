#!/bin/bash

function tasks.npm_latest {

    set -e

    ncu -u

    lib.npm.install && lib.npm.install "task-library" -D

}
