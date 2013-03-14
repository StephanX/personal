#!/bin/bash

counter=101
testip=`seq 101 120`
for freeip in $testip
do
  echo "counter is $((counter++))"
  dunno=`grep 172.168.56.$counter test`
  echo "$dunno is dunno"
  if [[ -z $dunno ]] ; then
    echo "tested $counter as free"
    exit 0
  fi
done



# for i loop with two files, line by line
loop=`cat file1 |wc -l` ; echo $loop ; for i in `seq 1 $loop` ; do echo `awk "NR==$i" file1` and `awk "NR==$i" file2` ; done