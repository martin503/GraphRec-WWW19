#!/bin/bash

# Parse flags
p=""
while getopts ":p" opt; do
  case $opt in
  p)
    p="-p ${HOST_PORT}:${DOCKER_PORT}"
    ;;
  \?)
    echo "Invalid option: -$OPTARG" >&2
    exit 1
    ;;
  esac
done

# Start container
echo "Building gpu version of docker container (gnn_recsys)"
docker run $p -it --rm --gpus 'all,"capabilities=compute,utility"' --ipc=host -v $(pwd):/code -v /data:/data:ro gnn_recsys_mp:0.8.1
