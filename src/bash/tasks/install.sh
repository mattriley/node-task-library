#!/bin/bash

function tasks.install {

    npm.install

    core.run_tasks "brew-infer | npm-infer"

}
