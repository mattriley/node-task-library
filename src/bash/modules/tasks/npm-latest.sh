#!/bin/bash

function tasks.npm_latest {

    ui.newline && \
    ncu -u && \
    ui.newline && \
    npm.install && 
    npm.install "-D task-library" && \
    ui.newline

}
