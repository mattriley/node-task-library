#!/bin/bash

function npm_latest {

    set -e

    ncu -u

    npm.install && npm.install "task-library" -D

}
