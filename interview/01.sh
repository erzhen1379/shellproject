#!/bin/bash
#使用Linux命令查询 file1.txt 中空行所在的行号


#^ 匹配字符串的开始
#$ 匹配字符串的结束

awk '/^$/{print NR}' file1.txt