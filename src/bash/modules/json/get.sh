#!/bin/bash

function json.get {

    local path="$1"; local text; text="$(cat -)"
    echo "$text" | node -pe "require('lodash').get(JSON.parse(fs.readFileSync(0)), '$path', '')"
    
}
