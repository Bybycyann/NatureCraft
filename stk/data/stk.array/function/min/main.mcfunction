# ```
# 查找数组中最大的数并输出索引
# @param  arr    (int[]): 待查找的数组
# @return target (int)  : 目标值(最小值)
# @return index  (int)  : 目标值的索引
# ```

# [栈压入]
data modify storage stk:io stack append value {}
# [栈写入] int[] arr;
$data modify storage stk:io stack[-1] merge value {arr:$(arr)}

# Init
# score #i=0, #target=max;
scoreboard players set #i stk.var 0
scoreboard players operation #target stk.var = max stk.const

# Core
function stk.array:min/1/_

# Return
data remove storage stk:io output
execute store result storage stk:io output.target int 1 run scoreboard players get #target stk.var
execute store result storage stk:io output.index int 1 run scoreboard players get #index stk.var

# [栈弹出]
data remove storage stk:io stack[-1]