#!/bin/bash

function npm.is_published {

    npm view > /dev/null 2>&1

}
