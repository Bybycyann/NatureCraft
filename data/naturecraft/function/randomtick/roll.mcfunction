# 响应概率
execute store result score #random NatureCraft.var run random value 1..4096
execute if score #random NatureCraft.var > #randomTickSpeed NatureCraft.var run return 0

# 抽取目标
execute as @e[type=minecraft:marker,tag=NatureCraft.data,tag=NatureCraft.randomtick,dx=15,dy=15,dz=15,sort=random,limit=1] run tag @s add NatureCraft.target

# target标签
execute store result score #target NatureCraft.var run scoreboard players get @e[type=minecraft:marker,tag=NatureCraft.data,tag=NatureCraft.target,sort=nearest,limit=1] NatureCraft.uid
execute as @e if score @s NatureCraft.uid = #target NatureCraft.var run tag @s add NatureCraft.target

# 调用事件函数
## 事件类型参数(0-place,1-leftclick,2-rightclick,3-random,4-clock)
scoreboard players set #event_type NatureCraft.var 3
execute as @e[type=minecraft:marker,tag=NatureCraft.data,tag=NatureCraft.target,sort=nearest,limit=1] if data entity @s data.event.random at @s \
        run function naturecraft:event with entity @s data.event.random

# 重置
tag @e[tag=NatureCraft.target] remove NatureCraft.target

# 循环抽取
scoreboard players remove #cyc NatureCraft.var 1
execute unless score #cyc NatureCraft.var matches ..0 run function naturecraft:randomtick/roll