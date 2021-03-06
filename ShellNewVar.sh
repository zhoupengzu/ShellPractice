#Shell变量
#变量定义规则：1、首个字符必须为字母（a-z，A-Z）；2、中间不能有空格，可以使用下划线（_）；
#变量定义规则：3、不能使用标点符号；4、不能使用bash里的关键字（可用help命令查看保留关键字）
#变量定义规则：最主要的是不能有空格
# 1、直接定义（使用时在变量前加$即可）
# 错误：directDefineVar ="I am a direct var"
# 错误：directDefineVar= "I am a direct var"
directDefineVar="I am a direct var"
echo $directDefineVar
echo ${directDefineVar}

#2、变量默认是读写的
defaultVar="I am default str"
echo $defaultVar
defaultVar="I am new default str"
echo $defaultVar
#修改读写权限：readonly
read_only_var="I am readonly str"
readonly read_only_var
#会报错 read_only_var="I am not changed"
echo $read_only_var

#3、删除变量:unset
unset_var="I am will unset"
unset unset_var
echo $unset_var  #这里不会有输出

#变量类型
#局部变量、环境变量、shell变量（既有局部变量，又有环境变量）

#字符串：既可以用单引号也可以用双引号，也可以不用引号
#单引号限制：1、单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的；2、单引号字串中不能出现单引号（对单引号使用转义符后也不行）
#双引号没有上述限制
str1="双引号"
str2='单引号'
str3=没引号
echo ${str3}

#拼接字符串
base_str="zhoupengzu"
concat_str1="Hello,"$base_str"!"
concat_str2="Hello,$base_str!"
concat_str2="Hello,${base_str}!"
echo $concat_str1 $concat_str2

#获取字符串长度:字符串前加“#”号
base_length_str="Hello!Length"
str_length=${#base_length_str}
echo $str_length

#截取字符串
base_sub_str="Hello!SubString"
echo "The substring is ${base_sub_str:1:4}"

#查找子字符串（有问题）
# base_find_str="Hello,Find me"
# echo `expr index "$base_find_str" me`

#数组（不支持多维数组，且大小不定） 两种定义方式：数组名=(值1 值2 ... 值n)或者array_name[0]=value0,array_name[1]=value1,array_name[n]=valuen
arr_name=()
arr_name[0]=2
arr_name[1]=3
echo ${arr_name[@]}  #使用@打印所有数组内容
echo ${arr_name[*]}  #或者使用*打印所有数组内容

length=${#arr_name[@]} #或者length=${arr_name[*]}
echo $length
