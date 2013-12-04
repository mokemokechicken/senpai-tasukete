#!/bin/sh

cd $(dirname $0)
RUN_PG=$@
SAMPLES="1.txt 2.txt 3.txt test.txt 20000_75.txt 200000_75.txt"
PREFIX_Q="example_"
PREFIX_A="answer_"

mkdir -p tmp

for sample in $SAMPLES
do
    echo --------------------------------------
    echo "EXAMPLE: $sample"
    time $RUN_PG < data/${PREFIX_Q}${sample} > tmp/.result
    diff -u data/${PREFIX_A}${sample} tmp/.result > tmp/.diff
    if [[ -z $(cat tmp/.diff) ]]; then
        echo "OK"
    else
        echo "######################## NG ##########################"
        cat tmp/.diff
        echo "######################## NG ##########################"
        exit 1
    fi
done

