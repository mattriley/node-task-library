#!/bin/bash

function tasks.npm_latest {
    reporter.newline

    # Upgrade other deps as normal
    ncu -u
    reporter.newline

    # For "*" or "latest" deps, force a fresh resolve without pinning in package.json
    npm install --force
    reporter.newline
}
