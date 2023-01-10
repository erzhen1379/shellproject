#!/bin/bash
user=other
ip=hadoop123
passwd=other123

#设置执行expect 命令
/usr/bin/expect << EOF 

spawn ssh   $user@$ip 
# 设置执行超时时间，任何输入10秒后退出
set timeout 2
expect {
    "yes/no" {send "yes\r";exp_continue}
    "password:" {send "$passwd\r"} 
}
#定义命令的开始 匹配 *]# 的内容，其实就是[root@localhost sum] # 的最后那段
#注意后面要加 \r 表示回车
expect "*]#"
 send "touch /home/other/d.txt\n" 
expect "*]#" 
 send "touch /home/other/c.txt\n" 
expect eof
EOF






