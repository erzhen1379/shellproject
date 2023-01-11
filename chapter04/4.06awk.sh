#!/bin/bash

cat word.txt |awk '
BEGIN { i=0 }      #文件或stdin中读取一行，然后执行pattern { commands }。重复这个过程，直到
     {i++}
END {print i}
'



echo | awk '{var1="v1";var2="v2";print var1,var2}'


#

cat word.txt |awk '{print $NR}'   #
echo ------------
cat word.txt |awk '{print $NF}'

print 