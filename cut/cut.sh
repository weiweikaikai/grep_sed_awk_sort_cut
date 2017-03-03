#!/bin/bash

who | cut -b 3 #提取每一行的第3个字符
who | cut -b 3-5,8 #提取每一行的第三到五个字符和第八个字符

who | cut -c 3 #提取每一行的第3个字符
        #-c 和 -b的区别是 -c在对汉字输出时候也是单个汉字  -b对汉字进行输出的时候就是一个乱码单字节 我们知道汉字至少占2个字节

who | cut -c -3 #提取每一行的第1-3个字符
who | cut -c 3- #提取每一行的第3-末尾个字符
who | cut -c -3,3- #提取一整行的数据  但是不会出现第三个字符重复的情况

cat chinese.txt | cut -b 2  #输出第二个字节
cat chinese.txt | cut -nb 1  #输出的时候不要讲多字节的字符拆开
cat chinese.txt | cut -nb 3  #输出的时候不要讲多字节的字符拆开
cat chinese.txt | cut -nb 1,2,3  #输出的时候不要讲多字节的字符拆开

cat passwd.txt | head -n 5 | cut -d : -f 1 # 文件中前五行 以:为分隔符 显示第一列
cat passwd.txt | head -n 5 | cut -d : -f 1,3-5,7

#cut只允许间隔符是一个字符
