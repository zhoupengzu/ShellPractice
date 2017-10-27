#回顾练习一
#定义一个变量并输出
define_var="I am a new define var"
echo $define_var

str_length=${#define_var}
echo "字符串长度为：${str_length}"
sub_str=${define_var:2:3}
echo "截取的字符串为：${sub_str}"
# find_str=`expr index ${define_var} am`
# echo "查找字符串:${find_str}"

arr_define=("1" "2" 3)
echo "数组里的所有值：${arr_define[*]}" #“*”可以用@号代替
echo "数组长度：${#arr_define[*]}" #“*”可以用@号代替
arr_define[4]="4"
echo "数组里的所有值:${arr_define[@]}"
echo "数组长度：${#arr_define[@]}"
