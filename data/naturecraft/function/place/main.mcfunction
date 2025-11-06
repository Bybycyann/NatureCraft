# 撤销触发器
advancement revoke @s only naturecraft:place
# 玩家标签 - add(用于添加实体指针)
tag @s add NatureCraft.target

# 目标占用逻辑
execute as @e[type=minecraft:marker,tag=NatureCraft.init,sort=nearest,limit=1] at @s if function naturecraft:place/occupy/0 run return 0

# 类型分流
## 默认
execute as @e[type=minecraft:marker,tag=NatureCraft.init,sort=nearest,limit=1] positioned as @s align y run function naturecraft:place/none
## 悬挂
execute as @e[type=minecraft:item_frame,tag=NatureCraft.init,sort=nearest,limit=1] positioned as @s run function naturecraft:place/hang

# 玩家标签 - remove
tag @s remove NatureCraft.target