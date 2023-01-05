#!/bin/bash
#数组相和关联数组

#1.定义数组
array_var=(1 2 3 4 5 6)

array_test_var[0]="test0"
array_test_var[1]="test1"

echo ${array_var[0]}
echo ${array_var[*]}  #打印所有
echo ${array_test_var[*]}
echo ${array_test_var[1]}
