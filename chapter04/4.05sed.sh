#!/bin/bash

#sed可以替换给定文本中首个字符串,-i 表示替换原来文件
sed  -i 's/zhangsan/0001/' example.txt

#sed可以替换给定文本中所有匹配的字符串
sed  -i 's/0001/zhangsan/g' example.txt
