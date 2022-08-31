#!/bin/bash

function tasks.install_brew_packages {

    set -e

    which -s "jq1" || brew install "jq"
    which -s "itermocil" || brew install "TomAnthony/brews/itermocil"

}
