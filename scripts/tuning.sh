#!/bin/bash

if [[ $# != 3 ]]; then
    echo "Wrong number of arguments, usage: $0 <filename-for-results> <num-epochs> <repeats>"
    exit 1
fi

lrs=(0.001)
batch_sizes=(128)
embedding_dims=(64)

for (( c=1; c<=$3; c++ )); do  
    echo "Round ${c}" >> /code/reports/$1
    for lr in ${lrs[@]}; do
        for batch_size in ${batch_sizes[@]}; do
            for embedding_dim in ${embedding_dims[@]}; do
                echo "lr: ${lr}, batch_size: ${batch_size}, embedding_dim: ${embedding_dim}" >> /code/reports/$1
                { time python /code/run_GraphRec_example.py --data=/code/data/Epinions --epochs=$2 --lr=${lr} --batch_size=${batch_size} --embed_dim=${embedding_dim} ;} &>> /code/reports/$1
                date >> /code/reports/$1
                echo "" >> /code/reports/$1
            done
        done
    done
done

echo "Tests finished!" >> /code/reports/$1
