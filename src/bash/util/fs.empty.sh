#!/bin/bash

function fs.empty {

    [ ! -d "$1" ] || [ -z "$(ls -A "$1")" ]

}
