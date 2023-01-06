#!/bin/bash

#1.查看多个文件
#cat *

#2.拼接
echo "test through stdin " |cat - word.txt

#3.除去空格 -s 压缩相邻的空白行

cat -ns word.txt