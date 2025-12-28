# ```
# for len(arr) > 0:
#   if arr[0] < target:
#       target = arr[0]
#       index = i
#   arr.remove(0)
#   i = i + 1
# ```
execute store result score #temp stk.var run data get storage stk:io stack[-1].arr
execute if score #temp stk.var matches ..0 run return 0
    execute store result score #temp stk.var run data get storage stk:io stack[-1].arr[0]
    execute if score #temp stk.var < #target stk.var run function stk.array:min/1/1
    data remove storage stk:io stack[-1].arr[0]
    scoreboard players add #i stk.var 1
function stk.array:min/1/_