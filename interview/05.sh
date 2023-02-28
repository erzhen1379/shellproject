#!/bin/bash

#目录下所有文件名重命名为"旧文件名-递增数字" 
dir=./tmp
old_name=$(ls $dir)
echo $old_name 
number=0
for name in $old_name
    do 
        let number+=1
        new_name=$name"-"$number
        mv  $dir/$name  $dir/$new_name
        echo "修改后名字：" $new_name
    done 