# target
execute store result score #target NatureCraft.var run scoreboard players get @s NatureCraft.uid
execute as @e if score @s NatureCraft.uid = #target NatureCraft.var run tag @s add NatureCraft.target

# 调用事件函数
## 事件类型参数(0-place,1-leftclick,2-rightclick,3-random,4-clock)
scoreboard players set #event_type NatureCraft.var 4
execute as @s if data entity @s data.event.clock at @s \
        run function naturecraft:event with entity @s data.event.clock

# 重置
scoreboard players set @s NatureCraft.clock 0
tag @e[tag=NatureCraft.target] remove NatureCraft.target