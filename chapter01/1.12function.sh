#!/bin/bash
fname(){
   echo '测试函数'
   echo $1, $$2
   echo $@   #"$@"被扩展成"$1""$2""$3"等。
   echo '$*' 
  return 0; #返回值
  
  
}

#调用函数
fname