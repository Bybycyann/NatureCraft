# 撤销触发器
advancement revoke @s only naturecraft:place

# 目标占用逻辑
# (还没写)

# 类型分流
## 默认
execute as @e[type=minecraft:interaction,tag=NatureCraft.init,sort=nearest,limit=1] positioned as @s run function naturecraft:place/none
## 悬挂
execute as @e[type=minecraft:item_frame,tag=NatureCraft.init,sort=nearest,limit=1] positioned as @s run function naturecraft:place/hang