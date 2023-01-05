#!/bin/bash
#使用set -x和set +x对脚本进行部分调试

#set –x：在执行时显示参数和命令。
#set +x：禁止调试。
#set –v：当命令进行读取时显示输入。
#set +v：禁止打印输入。

for((i=0;i<6;i++)); do
    set -x
    echo "${i}"
    set +x
done
echo script executed 


function DEBUG(){
    [ "$_DEBUG" == "on" ] && $@ || :
}
for i in {1..10}
do 
DEBUG echo $i
done

DEBUG