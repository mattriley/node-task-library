#!/bin/bash

function tasks.install {

    npm.install

    core.tasks.run_tasks "brew-infer | npm-infer"

}
