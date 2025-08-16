# target标签
execute store result score #target NatureCraft.var run scoreboard players get @s NatureCraft.uid
execute as @e if score @s NatureCraft.uid = #target NatureCraft.var run tag @s add NatureCraft.target

# 目标转存
execute as @s run data modify entity @s interaction set from entity @s attack

# 调用事件函数
## 事件类型参数(0-place,1-leftclick,2-rightclick,3-random,4-clock)
scoreboard players set #event_type NatureCraft.var 1
execute as @e[type=minecraft:marker,tag=NatureCraft.data,tag=NatureCraft.target,sort=nearest,limit=1] if data entity @s data.event.left_click at @s \
        run function naturecraft:event with entity @s data.event.left_click

# 重置
data remove entity @s attack
data remove entity @s interaction
tag @e[tag=NatureCraft.target] remove NatureCraft.target