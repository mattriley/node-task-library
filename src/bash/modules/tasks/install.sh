#!/bin/bash

function tasks.install {

    lib.run_tasks "install-brew-packages | install-npm-packages"

}
