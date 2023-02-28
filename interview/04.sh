#!/bin/bash

#批量生产指定数目的文件，文件名采用"纳秒"命名
read -p "请输入创建目录数：" n

echo "请输入你要创建文件的次数:$n"
test=$(echo $n |sed 's/[0-9]//g')
echo $test
if [ -n "$n" -a -z "$test" ]
then 
        for((i=0;i<$n;i=i+1))
    do   
        name=$(date +%N)
       [ ! -d ./tmp ]  && mkdir ./tmp 
        touch  ./tmp/$name
        echo "$name 创建成功"
    done
else 
   echo "创建失败"
fi