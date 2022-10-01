#!/bin/bash

function tasks.npm_latest {

    reporter.newline && \
    ncu -u && \
    reporter.newline && \
    npm.install && 
    npm.install "-D task-library" && \
    reporter.newline

}
