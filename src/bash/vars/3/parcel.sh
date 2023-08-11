#!/bin/bash

function PARCEL_OPTIONS {
    echo "$INDEX_HTML"
}

function PARCEL_CONFIG {
    echo "$PACKAGE_DIR/.parcelrc"
}

function PARCEL_DETECTED {
    npm.is_module_installed "parcel" || fs.file_exists "$PARCEL_CONFIG"
    bool.echo $?
}
