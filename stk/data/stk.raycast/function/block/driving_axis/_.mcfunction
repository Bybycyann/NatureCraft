# ```
# 获取驱动轴
# @return axis   (int) : 驱动轴索引
# @return s      (list): 分量步进方向
# @return |dPos| (list): |dx,dy,dz|
# ```

# [栈压入][栈写入] vec3 dPos;
execute anchored eyes positioned ^ ^ ^ align xyz summon minecraft:marker run function stk.raycast:block/driving_axis/1/_
kill @e[tag=temp,type=minecraft:marker,limit=1]
# [栈写入] vec3 |dPos|=abs(dPos), s;
data modify storage stk:io push set value {"s":[0,0,0],"|dPos|":[0,0,0]}
execute if predicate {value:{type:"storage",storage:"stk:io",path:"stack[-1].dPos[0]"},range:{min:0},condition:"value_check"} run function stk.raycast:block/driving_axis/2/x/1
execute if predicate {value:{type:"storage",storage:"stk:io",path:"stack[-1].dPos[1]"},range:{min:0},condition:"value_check"} run function stk.raycast:block/driving_axis/2/y/1
execute if predicate {value:{type:"storage",storage:"stk:io",path:"stack[-1].dPos[2]"},range:{min:0},condition:"value_check"} run function stk.raycast:block/driving_axis/2/z/1
execute if predicate {value:{type:"storage",storage:"stk:io",path:"stack[-1].dPos[0]"},range:{max:0},condition:"value_check"} run function stk.raycast:block/driving_axis/2/x/0
execute if predicate {value:{type:"storage",storage:"stk:io",path:"stack[-1].dPos[1]"},range:{max:0},condition:"value_check"} run function stk.raycast:block/driving_axis/2/y/0
execute if predicate {value:{type:"storage",storage:"stk:io",path:"stack[-1].dPos[2]"},range:{max:0},condition:"value_check"} run function stk.raycast:block/driving_axis/2/z/0
data modify storage stk:io stack[-1] merge from storage stk:io push
# max(abs-Pos)
data modify storage stk:io input.arr set value [0,0,0]
execute store result storage stk:io input.arr[0] int 1 run data get storage stk:io push.|dPos|[0]
execute store result storage stk:io input.arr[1] int 1 run data get storage stk:io push.|dPos|[1]
execute store result storage stk:io input.arr[2] int 1 run data get storage stk:io push.|dPos|[2]
function #stk.array:max with storage stk:io input
# [栈写入] int axis
data modify storage stk:io stack[-1].axis set from storage stk:io output.index
# return
data remove storage stk:io output
data modify storage stk:io output.axis set from storage stk:io stack[-1].axis
data modify storage stk:io output.s set from storage stk:io stack[-1].s
data modify storage stk:io output.|dPos| set from storage stk:io stack[-1].|dPos|
data modify storage stk:io output.Pos0 set from storage stk:io stack[-1].Pos0
# [栈弹出]
data remove storage stk:io stack[-1]