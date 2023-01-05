#!/bin/bash
#取、设置日期和延时

#1.读取时间
date 

#2.打印纪元时
date +%s

#用格式串结合+ 作为date 命令参数
date "+%d %B %Y"

#记录命令执行时间差
start=$(date +%s)
echo $start
pwd
sleep 3

end=$(date +%s)
echo $end
difference=$(($end -$start))
echo $difference