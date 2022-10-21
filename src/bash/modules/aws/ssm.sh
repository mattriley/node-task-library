#!/bin/bash

function aws.ssm {

    aws ssm get-parameter --region "$AWS_REGION" --name "$1" --with-decryption | tools.jq -r '.Parameter.Value'

}
