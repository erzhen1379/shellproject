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


