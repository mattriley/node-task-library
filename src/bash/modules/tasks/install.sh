#!/bin/bash

function tasks.install {

    npm.install

    lib.run_tasks "brew-infer | npm-infer"

}
