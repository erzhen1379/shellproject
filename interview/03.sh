#!/bin/bash
#Shell脚本里如何检查一个文件是否存在？如果不存在该如何处理？

if [ -e file1.txt ]; then echo "1" ;else echo "0" ;fi

