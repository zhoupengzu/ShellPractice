#传递参数：在文件后面用空格分隔开每个要传递的参数
#获取参数：$n用来获取传递的参数，n的取值为0到9
#        $#用来获取传递的参数个数
#        $*用一个字符串展示所有的传递参数
#        $@将每个参数用引号包围展示出来
#        #?显示最后命令运行状态，如果为0则表示没有错误
all_argument=$*
echo "所有的传递参数：$all_argument"
echo "所有的传递参数（\$@表示）:$@"

# echo "当前使用选项：$-"
argument_count=$#
printf "参数个数%d\n" $argument_count

echo "for循环"
for_loop=(1 2 3 4 5 6 7 8 9)
for index in ${for_loop[@]}
  do echo $index
  if [ $index -ge 6 ]
    then break
  fi
done

echo "===================while循环========================"
while_index=0
while_loop=("1" 2 3 4 5 6 7 8 9)
while [ $while_index -lt ${#while_loop[@]} ]
do
  printf "%d\n" ${while_loop[$while_index]}
  let while_index=while_index+1  #或者let while_index++、let while_index += 1
done

echo "===================case判断=========================="
while_index=0
while [ $while_index -lt ${#while_loop[@]} ]
do
  case ${while_loop[while_index]} in   #数组的索引如果是变量，可以不加$
    "1") printf "我是%d\n"  ${while_loop[while_index]}  #每个case必须有“）”或者“（）”
    ;;  #添加在每个case后面，且必须有
    (2) printf "我是%d\n"  ${while_loop[$while_index]}
    # break
    ;;
    # 3 -o 4 -o 5) 错误写法
    3 | 4 | 5) printf "我是%d\n"  ${while_loop[$while_index]}  #如果是多个值满足相同的条件，可以这么写
    ;;
    *) printf "我是其他的值\n"  #“*”用来模糊匹配
    ;;
  esac   #esac语法，case里必须有，在case的结束
  let while_index++
done
