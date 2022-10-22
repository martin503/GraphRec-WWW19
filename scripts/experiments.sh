#!/bin/bash

if [[ $# != 3 ]]; then
    echo "Wrong number of arguments, usage: $0 <filename-for-results> <num-epochs> <repeats>"
    exit 1
fi

for ((i = 1; i <= $3; i++)); do
    printf "*****Round ${i}*****\n" >>/code/reports/$1
    { time python /code/run_GraphRec_example.py --data=/code/data/Epinions --epochs=$2 --lr=0.005 --batch_size=1024 --embed_dim=64 ;} &>> /code/reports/$1
    { time python /code/run_GraphRec_example.py --data=/code/data/Epinions --epochs=$2 --lr=0.02 --batch_size=16384 --embed_dim=64 ;} &>> /code/reports/$1
done

printf "\nTests finished!\n" >>/code/reports/$1