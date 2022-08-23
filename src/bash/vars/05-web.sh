#!/bin/bash

function STATIC {
    echo "$PACKAGE_ROOT/static"
}

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

function BFF_URL_LOCAL {
    echo "http://localhost:$(port "$PACKAGE_NAME-bff")"
}

function BFF_URL {
    echo "$BFF_URL_LOCAL"
}

function INDEX_HTML_TEMPLATE {
    echo "$SRC/index.template.html"
}

function INDEX_HTML {
    echo "$SRC/index.html"
}

function INDEX_HTML_TITLE {
    echo "$DISPLAY_NAME"
}

function INDEX_HTML_DESCRIPTION {
    echo "$(package description)"
}

function INDEX_HTML_AUTHOR {
    echo "$AUTHOR_NAME"
}

function INDEX_HTML_URL {
    [ "$WEB_URL" ] && echo "$WEB_URL"
}

function DIST_BASE {
    echo "$OUTPUT_ROOT/dist"
}

function DIST {
    [ "$STAGE" ] && echo "$DIST_BASE-$STAGE" || echo "$DIST_BASE"
}

function DIST_FLATTEN {
    echo "false"
}

function PARCEL_OPTIONS {
    echo "$INDEX_HTML"
}
