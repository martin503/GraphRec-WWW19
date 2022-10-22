#!/bin/bash

if [[ $# != 5 ]]; then
    echo "Wrong number of arguments, usage: $0 <container-name> <script-path> <num-epochs> <num-procs> <repeats>"
    exit 1
fi

docker run --name $1 -it --rm -d --gpus 'all,"capabilities=compute,utility"' --ipc=host -v $(pwd):/code -v /data:/data:ro gnn_recsys_mp:0.8.1
if [ $4 == 0 ]; then
    docker exec -d $1 $2 "$1.txt" $3 $5
else
    docker exec -d $1 $2 "$1.txt" $3 $4 $5
fi