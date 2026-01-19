#!/bin/bash

SCRIPT_DIR=$(dirname "$0")
cd "$SCRIPT_DIR" || exit

# Check if the Docker image exists
if ! docker images -q beta-system > /dev/null 2>&1; then
    echo "Docker image 'beta-system' not found. Run build.sh to create it."
fi

docker run -it --rm --mount type=bind,src=$PWD/..,dst=/root/beta beta-system