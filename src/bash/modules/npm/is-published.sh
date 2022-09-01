#!/bin/bash

function lib.is_published {

    npm view > /dev/null 2>&1

}
