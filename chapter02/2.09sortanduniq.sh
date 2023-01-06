#!/bin/bash

#1.根据第k行进行排序
cat 2.09sortanduniq.txt |sort -k 3

#2.逆序
cat 2.09sortanduniq.txt |sort -r

#3.按照数字排序
cat 2.09sortanduniq.txt |sort -n

#4.查看非重复的行
cat 2.09sortanduniq.txt  |uniq -u

#5.查看出现的次数
cat word.txt |xargs -n 1|sort -n   |uniq  -c