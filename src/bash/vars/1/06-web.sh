#!/bin/bash

function WEB_STATIC {
    echo "$PACKAGE_ROOT/static"
}

function STATIC_WEBSITE_DETECTED {
    fs.dir_exists "$WEB_STATIC" && ! fs.dir_exists "$SRC" && echo "true" || echo "false"
}

function WEB_SERVER {
    echo "$SRC/server.js"
}

function WEB_SERVER_DETECTED {
    fs.file_exists "$WEB_SERVER" && echo "true" || echo "false"
}

function WEB_SERVER_PORT {
    util.port "$(npm.package name)"
}

function PORT {
    echo "$WEB_SERVER_PORT"
}

function WEB_HOST_NAME {
    echo ""
}

function WEB_BASE_PATH {
    echo ""
}

function WEB_URL {
    # [[ $WEB_BASE_PATH == /* ]] && web_base_path="$WEB_BASE_PATH" || web_base_path="/$WEB_BASE_PATH"
    [ "$WEB_HOST_NAME" ] && [ "$WEB_BASE_PATH" ] && echo "https://$WEB_HOST_NAME$WEB_BASE_PATH" && return 0
    [ "$WEB_HOST_NAME" ] && echo "https://$WEB_HOST_NAME"
}

function BFF_URL {
    echo "http://localhost:$(util.port "$PACKAGE_NAME-bff")"
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
    npm.package description
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
