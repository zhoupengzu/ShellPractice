#运算符
#算数运算符：+、-、*、/、%、=、==、！=
#使用expr来运算，需要注意在运算符两边都应该有空格
a=10
b=20
c=10
d="10"
add=`expr $a + $b`
echo "The result is: add:$add"

#关系运算符(会先尝试转换成相同类型的，然后再做处理)：-eq（相等）、-ne（不相等）、-gt（大于）、-lt（小于）、-ge（大于等于）、-le（小于等于）
if [ $a -eq $b ]   #注意在[ a ]里a前后也有空格
then
  echo "equal"
else
  echo `expr $b - $a`
fi

if [ $a -ge $c ]
then
  echo "equal"
else
  echo "not equal"
fi

if [ $a -ge $d ]
then
  echo "equal"   #相等
else
  echo "not equal"
fi

echo "=====================================布尔运算和逻辑运算==================================="
a=10
b=20
c=100
#布尔运算符：！（非）、-o（或）、-a（且）
if [ $a != $b ]
then
  echo "a!=b"
fi
# [ $a -lt $c ] -a [ $b -lt $c ] 错误写法
# if [ ($a -lt $c) -a ($b -lt $c) ]  错误写法，不能加括号
# if [[ $a -lt $c -a $b -lt $c ]] 错误写法
if [ $a -lt $c -a $b -lt $c ]
then
  echo "small"
fi

#逻辑运算符：&&、||
# if [[ $a -lt $c ] && [ $b -lt $c ]] 错误写法
# if [[ $a -lt $c -a $b -lt $c ]] 错误写法
# if [[ ($a -lt $c) && ($b -lt $c) ]] 正确写法
# if [ $a -lt $c && $b -lt $c ]  错误写法
if [[ $a -lt $c && $b -lt $c ]]
then
  echo "&& small"
fi
echo "可以理解为：布尔运算是用来计算两个布尔值的，逻辑运算是?"

#字符串运算符：=（是否相等）、！=（是否不等）、-z（长度是否为0，是则返回true）、-n（长度是否为0，是则返回false）、str(字符串是否为空)

#文件检测运算符：-d（文件是否为目录）、-r（是否可读）、-w（是否可写）、-x（是否可执行）、-s（是否为空，大小是否为0）、-e（文件或者目录是否存在）
