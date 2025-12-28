# 临时标记
tag @s add temp
# 创建栈元素并入栈 dPos *1e5
data remove storage stk:io push
data modify storage stk:io push.Pos0 set from entity @s Pos
data modify storage stk:io push.Pos0 set from storage stk:io push.Pos0
execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1
data modify storage stk:io push.dPos set from entity @s Pos
execute store result storage stk:io push.dPos[0] int 1 run data get storage stk:io push.dPos[0] 100000
execute store result storage stk:io push.dPos[1] int 1 run data get storage stk:io push.dPos[1] 100000
execute store result storage stk:io push.dPos[2] int 1 run data get storage stk:io push.dPos[2] 100000
data modify storage stk:io stack append from storage stk:io push
# 清除标记
kill @s