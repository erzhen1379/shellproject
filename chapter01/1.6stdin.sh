#!/bin/bash
#文本重定向到文件中
echo "1111111" >tmp.txt
echo "222222" >>tmp.txt

#0 --stdin 标准输入
#1 --stdout 标准输出
#2 --stderr 标准错误

#将异常日志重定向到文件
ls + > out.txt  #日志无法输出到文件中
ls + 2> out.txt #正常运行

cmd 2>stderr.log 1>stdout.log
cmd &>output.log

cmd 2>/dev/null

tree 

#在cat <<EOF>log.txt与下一个EOF行之间的所有文本行都会被当做stdin数据
cat<<EOF>log.txt
LOG FILE HEADER
this is a test log file
EOF