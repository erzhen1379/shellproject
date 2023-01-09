#!/bin/bash


cat hosts.txt | while read rows
do
  echo "Line contents are : $rows "
  user=$($row |awk '{print $1}')
  ip=$($rows|awk '{print $1}')
  echo $($op awk '{print $1}')
done

