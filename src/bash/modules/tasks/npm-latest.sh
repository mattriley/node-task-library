#!/bin/bash

function tasks.npm_latest {

    

    ncu -u

    npm.install && npm.install "task-library" -D

}
