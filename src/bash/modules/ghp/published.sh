#!/bin/bash

function ghp.published {

    local status_code; status_code=$(curl -s -o /dev/null -I -w "%{http_code}" "$GITHUB_PAGES_URL/") # trailing slash is needed
    [ "$status_code" = "200" ] || [ "$status_code" = "301" ]

}
