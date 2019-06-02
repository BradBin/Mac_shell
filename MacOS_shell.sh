#!/usr/bash

#*********************输出****************
#输出
echo "Hello world!"
echo Hello world!

text = "Hello world!"
echo $text

#输出并换行
echo -e "Hello \n world!"

#重定向到文件
echo "Hello world" > a.txt

#输出当前系统时间



#*********************变量****************
<<COMMENT
1.只能使用 数字 字母 下划线，且不能以数字开头
2.变量名区分大小写
3.“=”前后不能有空格
4.访问变量使用$ ,否则输出为纯文本
COMMENT


myText="Hello world"
myNum=100

echo $myNum
echo $myText

echo myNum
echo myText




#*********************循环****************
#for循环
for (( i = 0; i < 6; i++ )); do
	# echo $i
	printf $i
done
echo


for i in 0 1 2 3 4 5; do
	printf $i
done
echo


for i in {0..5}; do
	printf $i
done
echo


#while循环
COUNTER=0
while [ $count -lt 5 ];do
    count=`expr $count + 1`
    echo $count
done



echo '请输入.......'
echo 'ctrl + c 即可停止该程序'
while  read NUM 
do
	echo "Yeah! greate Num is $NUM"
done




