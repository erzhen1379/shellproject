#!/bin/bash

#压入并切换路径：
pushd /home/netease/shellproject/chapter001

#查看目录
dirs 

#切换目录(从0开始)
pushd +3

#移除目录(从0开始)
popd +num 

#切换上次登录目录
cd -