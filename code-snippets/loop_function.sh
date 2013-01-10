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
