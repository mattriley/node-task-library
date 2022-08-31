#!/bin/bash

function lib.is_on_sls {

    [ -f "$SERVERLESS_CONFIG" ]

}
