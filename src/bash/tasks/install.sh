#!/bin/bash

function tasks.install {

    npm.install

    tasks.run_tasks "brew-infer | npm-infer"

}
