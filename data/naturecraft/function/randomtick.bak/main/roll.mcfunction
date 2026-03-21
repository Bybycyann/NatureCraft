# # 响应概率
# execute store result score #random NatureCraft.var run random value 1..4096
# execute if score #random NatureCraft.var > #random_tick_speed NatureCraft.var run return 0
say 2
# target 标签
execute store result score #temp NatureCraft.var run scoreboard players get @s NatureCraft.uid
execute as @e if score @s NatureCraft.uid = #temp NatureCraft.var run tag @s add NatureCraft.target

# 调用事件函数
## 事件类型参数(0-place,1-leftclick,2-rightclick,3-random,4-clock)
scoreboard players set #event_type NatureCraft.var 3
execute if data entity @s data.event.random at @s run function naturecraft:event with entity @s data.event.random

# 重置
tag @e[tag=NatureCraft.target] remove NatureCraft.target