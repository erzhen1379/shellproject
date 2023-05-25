#!/bin/bash

export JAVA_HOME=/usr/local/java/package/jdk1.8.0_152/
keyword=OOM
logFile=log.txt
sumoom=$(tail -n 20000  $logFile |grep $keyword |wc -l)
start_command=
pid=$(ps -ef|grep win|awk '{print $2}')

if [$pid -le 0];then
   echo "impala manager not running"
   sh start_command
   exit 0
fi

if [ $sumoom -gt 1 ]; then
    echo $sumoom
    echo '执行重启操作'
   pid=$(ps -ef|grep win|awk '{print $2}')
   if [ -n "$pid" ]; then
    echo  kill -9 $pid
    sh start_command
    fi
fi
