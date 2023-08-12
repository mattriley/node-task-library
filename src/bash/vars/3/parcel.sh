#!/bin/bash

function PARCEL_OPTIONS {
    echo "$INDEX_HTML"
}

function PARCEL_CONFIG {
    echo "$PACKAGE_DIR/.parcelrc"
}

function PARCEL_DETECTED {
    node.module_installed "parcel" || fs.file_exists "$PARCEL_CONFIG"
    bool.from_exit_status $?
}
