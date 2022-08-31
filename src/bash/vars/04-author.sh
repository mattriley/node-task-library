#!/bin/bash

function AUTHOR_NAME {
    package_author_name="$(lib.npm.package author.name)"
    [ "$package_author_name" ] && echo "$package_author_name" && return 0
    echo "$MY_AUTHOR_NAME"
}

function AUTHOR_EMAIL {
    package_author_email="$(lib.npm.package author.email)"
    [ "$package_author_email" ] && echo "$package_author_email" && return 0
    echo "$MY_AUTHOR_EMAIL"
}

function AUTHOR_URL {
    package_author_url="$(lib.npm.package author.url)"
    [ "$package_author_url" ] && echo "$package_author_url" && return 0
    echo "$MY_AUTHOR_URL"
}
