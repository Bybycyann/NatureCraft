# 朝向参数
scoreboard players set #facing NatureCraft.var 1

# marker朝向矫正
rotate @s 0.0 0.0

# 数据填充与初始化
execute facing ^ ^ ^-1 rotated ~ 0 run function naturecraft:place/init/0 with entity @s data.model
# 实体数据精简
function naturecraft:place/datasimp

# 序列分配
execute store result score @e[tag=NatureCraft.init] NatureCraft.uid run scoreboard players add #S/N NatureCraft.uid 1
# marker ride root
ride @s mount @e[type=minecraft:item_display,tag=NatureCraft.root,tag=NatureCraft.init,limit=1]

# 放置事件调用
## targe标签
tag @e[tag=NatureCraft.init] add NatureCraft.target
## 事件类型参数(0-place,1-leftclick,2-rightclick,3-random,4-clock)
scoreboard players set #event_type NatureCraft.var 0
execute if data entity @s data.event.place at @s run function naturecraft:event with entity @s data.event.place
## 重置
data remove entity @e[type=minecraft:interaction,tag=NatureCraft.target,limit=1] interaction
tag @e[tag=NatureCraft.target] remove NatureCraft.target
tag @e[tag=NatureCraft.init] remove NatureCraft.init