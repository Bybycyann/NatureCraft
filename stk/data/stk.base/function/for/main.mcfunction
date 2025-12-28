# ```
# 条件循环
# example: 
# /function #stk.base:for {
#   param:[
#       "scoreboard players set #i stk.var 0",
#       {(cycle:10|condition:"if score #i stk.var matches ..9")},
#       "(tellraw @a {score:{objective:\"stk.var\",name:\"#i\"}}|function xxx:xxx)"
#   ]
# }
#
# @param param (list[string,object,string]): 参数列表
#
# cycle 循环可在内部插入 return 1 终止循环
# ```

# 参量传入
$data modify storage stk:io push set value $(param)
# core
function stk.base:for/1