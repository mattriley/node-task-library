#!/bin/bash

# NOTE: Currently not in use. Try to avoid the extra dependency. Use `json.get` instead.

function tools.jq {

    which -s "jq" || tools.brew install "jq"
    jq "$@"

}
