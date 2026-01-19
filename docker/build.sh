#!/bin/bash

# Change to the directory containing the script
SCRIPT_DIR=$(dirname "$0")
cd "$SCRIPT_DIR" || exit

docker build -t beta-system - < Dockerfile