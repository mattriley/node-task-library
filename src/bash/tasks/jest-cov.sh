#!/bin/bash

set -e

npx task jest-test --coverage "$@"
