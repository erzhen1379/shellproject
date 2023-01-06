#!/bin/bash

#1.按照文件名称搜索
find /usr/local/repo/ -name "*lastUpdated" |xargs rm -rf {} \;

#2.or条件搜索
find /home/netease/javaproject/hadoop-3.1.1-lean/ -name "*.jar"  -o -name "*.class"

#3. ！取反
find /home/netease/javaproject/hadoop-3.1.1-lean/ !  -name "*.jar"  -o -name "*.class"

#4.-maxdepth和-mindepth来限制find命令遍历的目录深度
find /home/netease/javaproject/hadoop-3.1.1-lean/ -maxdepth 3  -name "*.jar"  -o -name "*.class"


#5.-type d(搜索目录)  跟 f（搜索文件） 
find /home/netease/javaproject/hadoop-3.1.1-lean/ -mindepth 2  -name "*" -type d

#6.按照时间过滤
find /home/netease/javaproject/hadoop-3.1.1-lean/ -mindepth 2  -name "*" -type f -mtime -3

#7.按照文件大小搜索
find /home/netease/javaproject/hadoop-3.1.1-lean/   -name "*" -type f -size +5M

#8.执行命令或操作
find /home/netease/javaproject/hadoop-3.1.1-lean/   -name "*" -type f -size +5M -exec cat {} \;