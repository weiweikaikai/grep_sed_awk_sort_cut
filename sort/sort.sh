#!/bin/bash

cat passwd.txt | sort | more  #默认是以第一个字符进行排序的
cat passwd.txt | sort -t ':' -k 3 | more #是以第三列的按照字符进行排序的
cat passwd.txt | sort -t ':' -k 3n | more #以第三列的数字进行排序 默认是升序
cat passwd.txt | sort -t ':' -k 3nr | more #以第三列的数字进行排序 变为倒序


cat passwd.txt | sort -t ':' -k 6.2,6.4 -k 1r | more # 以第六列的第2个字符到第4个字符进行正向排序 再次基于第一列进行反向排序


cat passwd.txt | sort -t ':' -k 7  | more #对第七列进行排序
cat passwd.txt | sort -t ':' -k 7 -u   | more #对第七列进行排序并去重
