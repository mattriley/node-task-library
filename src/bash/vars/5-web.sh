#!/bin/bash

function SERVER {
    echo "$SRC/server.js"
}

function SERVER_PORT {
    port "$(package name)"
}

function PORT {
    echo "$SERVER_PORT"
}

function WEB_HOST_NAME {
    echo ""
}

function WEB_BASE_PATH {
    echo ""
}

function WEB_URL {
    [[ $WEB_BASE_PATH == /* ]] && web_base_path="$WEB_BASE_PATH" || web_base_path="/$WEB_BASE_PATH"
    [ "$WEB_HOST_NAME" ] && [ "$WEB_BASE_PATH" ] && echo "https://$WEB_HOST_NAME$WEB_BASE_PATH" && return 0
    [ "$WEB_HOST_NAME" ] && echo "https://$WEB_HOST_NAME"
}
