# 添加target标签
execute store result score #uid NatureCraft.uid run scoreboard players get @s NatureCraft.uid
tag @e[predicate=naturecraft:uid_matcher] add NatureCraft.target
# 事件函数
## 事件类型参数(0-place,1-leftclick,2-rightclick,3-random,4-clock)
scoreboard players set #event_type NatureCraft.var 3
execute if data entity @s data.event.random at @s run function naturecraft:event with entity @s data.event.random
# 清除target标签
tag @e[tag=NatureCraft.target] remove NatureCraft.target
