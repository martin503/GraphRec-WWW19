#!/bin/bash

if [[ $# != 3 ]]; then
    echo "Wrong number of arguments, usage: $0 <container-name> <num-epochs> <repeats>"
    exit 1
fi

docker run --name $1 -it --rm -d --gpus 'all,"capabilities=compute,utility"' --ipc=host -v $(pwd):/code -v /data:/data:ro gnn_recsys_mp:0.8.1
docker exec -d $1 ./scripts/tuning.sh "$1.txt" $2 $3
