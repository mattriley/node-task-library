#!/bin/bash

function GIT_DETECTED {
    fs.dir_exists ".git" && echo "true" || echo "false"
}
