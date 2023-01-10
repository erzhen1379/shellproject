#!/bin/bash
#比较2个文件差异
diff -c  version1.txt version2.txt


#diff的输出重定向到一个文件生成patch文件
diff -c  version1.txt version2.txt >version.patch

#通过version.patch修复文件version1.txt
patch -p1 version1.txt <version.patch

#撤销做出的修改
patch -p1 version1.txt < version.patch
