#!/bin/bash

function fs.file_absent {

    [ ! -f "$1" ]

}
