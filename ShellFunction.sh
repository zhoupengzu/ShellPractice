#Shell函数
function addTwo() {  #function关键字可以省略，但是不建议
  echo "This is first function"
}
echo "function begin evl"
addTwo   #调用的时候不带括号，即不能写成addTwo（）
echo "function end"

echo "====================传递参数======================="
throwParams(){
  all_argument=$*
  echo "传递的参数为：${all_argument}"
  for arg in ${all_argument[@]}
  do
    echo $arg
  done
  all_argument_1=$@
  for arg in ${all_argument_1[@]}
  do
    echo $arg
  done
  # echo "传递的参数为：${all_argument_1[0]}"
}
arr=(6 5 3)
throwParams "a" 4 5 ${arr[@]}
