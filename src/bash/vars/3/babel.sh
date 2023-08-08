#!/bin/bash

function BABEL_CONFIG {
    echo "$PACKAGE_ROOT/babel.config.js"
}

function BABEL_PRESET_ENV {
    node.is_module_installed "parcel" && echo "@parcel/babel-preset-env" || echo "@babel/preset-env"
}
