# [栈创建][栈写入(output)] vec3 s, |dPos|, Pos0; int axis;
data modify storage stk:io stack append from storage stk:io input

# 拉取 dx, dy, dz
function stk.raycast:block/x/stack_pull

# y0 ,z0
scoreboard players operation #y stk.var = #y0 stk.var
scoreboard players operation #z stk.var = #z0 stk.var

# 误差项 ey, ez
scoreboard players operation #ey stk.var = #dy stk.var
scoreboard players operation #ey stk.var *= 2 stk.const
scoreboard players operation #ey stk.var -= #dx stk.var
scoreboard players operation #ez stk.var = #dz stk.var
scoreboard players operation #ez stk.var *= 2 stk.const
scoreboard players operation #ez stk.var -= #dx stk.var

# for i in range(5)
scoreboard players set #i stk.var 0
execute anchored eyes positioned ^ ^ ^ align xyz run function stk.raycast:block/x/core