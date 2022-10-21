#!/bin/bash

function tools.jq {

    which -s "jq" || tools.brew install "jq"
    jq "$@"

}
