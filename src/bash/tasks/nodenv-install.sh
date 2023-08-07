#!/bin/bash

function tasks.nodenv_install.precondition {

    which -s nodenv

}


function tasks.nodenv_install {

    brew update && brew upgrade node-build && nodenv install

}
