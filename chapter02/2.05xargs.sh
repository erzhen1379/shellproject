#!/bin/bash

#根据分割符切割
echo "zhangsan,lisi,wangwu" |xargs -d "," -n 1

find . -type f -name "*.txt" -print0 | xargs -0 rm -f
cat example.txt |xargs -n 4

find . -type f   -name  "*.sh" |xargs tar -czvf tmp.tar.gz