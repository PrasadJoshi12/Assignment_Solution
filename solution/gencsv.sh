#!/bin/bash
if [ $# -eq 0 ]
then
        for num in {0..9}
        do
                echo "$num, $RANDOM" >> inputdata
        done
else
        N=$1
        for ((i=0 ; i < N ; i++))
        do
                echo "$i, $RANDOM" >> inputdata
        done
fi
