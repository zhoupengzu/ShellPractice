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
