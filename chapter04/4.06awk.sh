#!/bin/bash

cat word.txt |awk '
BEGIN { i=0 }      #文件或stdin中读取一行，然后执行pattern { commands }。重复这个过程，直到
     {i++}
END {print i}
'



echo | awk '{var1="v1";var2="v2";print var1,var2}'


#
cat word.txt |awk '{print $NR}'   
cat word.txt |awk '{print $NF}'
cat word.txt |awk '{print $0}'

echo -----------------------------------

#值累计
seq 5  |awk 'BEGIN{sum=0; print "Summation: "}
               {print $1"+"; sum=sum+$1;} 
             END {print "===========";print sum}'

#外部变量传入
VAR=1000
echo |awk -v VARIABLE=$VAR '{print VARIABLE}'

#分隔符
awk -F ":" '{print $NF}'   /etc/passwd

#读取命令输出"command" | getline output ;
echo | awk 'BEGIN {"grep root /etc/passwd"|getline cmdout;print cmdout}'

