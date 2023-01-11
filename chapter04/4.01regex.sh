#!/bin/bash
#1.匹配/^s/ 开头 
echo 'shadoop spark' |awk '/^s/{print $1}'

#2.指定字段或记录的末尾
echo 'shadoop sparktux' |awk '/tux$/{print $1}'


#2.指定字段或记录的末尾
echo 'shadoop sparktux' |awk '/tux$/{print $1}'