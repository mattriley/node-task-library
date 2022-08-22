#!/bin/bash

function ROOT {
    echo "."
}

function PACKAGE_ROOT {
    echo "$ROOT"
}

function GIT_ROOT {
    echo "$PACKAGE_ROOT"
}

function OUTPUT_ROOT {
    echo "$PACKAGE_ROOT"
}
