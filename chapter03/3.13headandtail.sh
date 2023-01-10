#!/bin/bash

#查看前5行
head -n 5 file.txt

#查看后5行
tail -n 5 file.txt

#查看n1 到n2行
 sed -n "5,10p" file.txt

 #查看n1行 后面的固定行数
 tail -n 10 file.txt |head -n 3