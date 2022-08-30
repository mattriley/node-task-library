#!/bin/bash

set -e

npx jest test --passWithNoTests "$@"
