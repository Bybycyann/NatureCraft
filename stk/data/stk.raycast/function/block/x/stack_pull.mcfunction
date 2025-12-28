# 从栈中拉取
execute store result score #x0 stk.var run data get storage stk:io stack[-1].Pos0[0]
execute store result score #y0 stk.var run data get storage stk:io stack[-1].Pos0[1]
execute store result score #z0 stk.var run data get storage stk:io stack[-1].Pos0[2]

execute store result score #dx stk.var run data get storage stk:io stack[-1].|dPos|[0]
execute store result score #dy stk.var run data get storage stk:io stack[-1].|dPos|[1]
execute store result score #dz stk.var run data get storage stk:io stack[-1].|dPos|[2]

execute store result score #sx stk.var run data get storage stk:io stack[-1].s[0]
execute store result score #sy stk.var run data get storage stk:io stack[-1].s[1]
execute store result score #sz stk.var run data get storage stk:io stack[-1].s[2]