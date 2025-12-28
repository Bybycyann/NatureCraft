# ```
# @param init      (string): 初始化函数
#
# @param condition (object): 循环条件
# @param cycle     (int)   : 循环次数
#
# @param function  (string): 循环体函数
# ```

# [栈压入][栈写入]
data modify storage stk:io stack append value {}
data modify storage stk:io stack[-1].for.init set from storage stk:io push[0]
data modify storage stk:io stack[-1].for.condition set from storage stk:io push[1].condition
data modify storage stk:io stack[-1].for.cycle set from storage stk:io push[1].cycle
data modify storage stk:io stack[-1].for.function set from storage stk:io push[2]

# [栈弹出]Error
execute if data storage stk:io push[1].condition if data storage stk:io push[1].cycle run return run function stk.base:for/error/0
execute unless data storage stk:io push[1].condition unless data storage stk:io push[1].cycle run return run function stk.base:for/error/1

# Core
function #stk.base:reset
function stk.base:for/init with storage stk:io stack[-1].for
execute if data storage stk:io push[1].condition run function stk.base:for/2/condition/_
execute if data storage stk:io push[1].cycle run function stk.base:for/2/cycle/_

# [栈弹出]
data remove storage stk:io stack[-1]