#!/bin/bash

function tasks.install {

    npm.install

    task_runner.run_tasks "brew-infer | npm-infer"

}
