#!/bin/bash

function install {

    set -e

    run_task install-brew-packages
    run_task install-npm-packages

}
