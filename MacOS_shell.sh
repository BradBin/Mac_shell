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
count=0
while [ $count -lt 5 ];do
    count=`expr $count + 1`
    echo $count
done



# echo '请输入.......'
# echo 'ctrl + c 即可停止该程序'
# while  read NUM 
# do
# 	echo "Yeah! greate Num is $NUM"
# done




#****************条件判断************************
<<COMMENT 

-gt 大于
-lt 小于
-ge 大于等于
-le 小于等于
-eq 等于
-ne 不等于

COMMENT

a=10
b=20

if [[ $a -eq $b ]]; then
	echo "true"
else
   echo "false"
fi




if [[ $a -eq $b ]]; then
	echo "a is equal to b"
elif [[ $a -ge $b  ]]; then
	echo "a is greater than b"
elif [[ $a -lt $b ]]; then
	echo "a is less than b"
else
	echo "None of the condition met"
fi





#****************函数************************

#定义一个没有返回值的函数，然后调用该函数
sysout(){
	echo "Hello world 定义一个没有返回值的函数，然后调用该函数"
}
sysout


#定义一个有返回值的函数，调用该函数并输出结果
test(){
	aNum=3
	bNum=5
	return $(($aNum + $bNum ))
}

test
result=$?
echo $result


#定义一个需要传递参数的函数
testPara(){
  echo $1
  echo $2 #接收到第二个参数
  echo $3 #接收的第三个参数
  echo $# #接收参数的个数
  echo $* #接收的所有参数
}

testPara aa bb cc





#****************字符窜操作*************
string_1="Hello"
string_2="world"

echo ${#string_1} #输出字符串长度
echo ${string_1:0:3} #截取字符串
echo $string_1" "$string_2 #字符串拼接


