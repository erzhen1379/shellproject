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
sleep 1

end=$(date +%s)
echo $end
difference=$(($end -$start))
echo $difference

#sleep
echo -e Count
 Count
tput sc

count=0
while true 
do 
if [ $count -lt 40 ]
then 
 let count ++
  sleep 1
  tput rc
  tput ed
 echo -n $count
 else exit 0
 fi
 
done