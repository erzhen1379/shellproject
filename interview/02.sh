#!/bin/bash
#使用Linux命令计算第二列的和并输出
awk '{sum+=$2} END{print "求和: "sum}' file2.txt