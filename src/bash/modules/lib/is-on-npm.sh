#!/bin/bash

function lib.is_on_npm {

    npm view > /dev/null 2>&1

}
