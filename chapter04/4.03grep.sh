#!/bin/bash

#匹配字符
grep "a" *

#正则匹配
grep -E "[a-z]+" *

#匹配取反
grep -v  "a" *

#匹配忽略大小写
grep  -i  "E" *