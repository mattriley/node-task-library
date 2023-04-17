#!/bin/bash

function tasks.brew_infer {

    which -s itermocil || brew install TomAnthony/brews/itermocil
    which -s shellcheck || brew install shellcheck

}
