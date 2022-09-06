#!/bin/bash

function tasks.install {

    lib.run_task install-brew-packages && \
    lib.run_task install-npm-packages

}
