#!/bin/bash
line="root:x:0:0:root:/root:/bin/bash"
oldIFS=$IFS
IFS=":"
count=0
for item in $line
do 
   echo Item: $item
done