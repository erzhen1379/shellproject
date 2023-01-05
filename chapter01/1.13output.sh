#!/bin/bash
#管道并利用子shell的方式将多个文件的输出组合起来
ls / |cat -n 

cmd=$(ls |cat -n)
echo $cmd