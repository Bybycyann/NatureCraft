# 朝向参数
execute store result score #facing NatureCraft.var run data get entity @s Facing

# 数据转移
summon minecraft:marker ~ ~0.5 ~ {Tags:["NatureCraft.data","NatureCraft.init"]}
data modify entity @e[type=minecraft:marker,tag=NatureCraft.init,sort=nearest,limit=1] data set from entity @s data
kill @s

# 数据填充与初始化
execute facing ^ ^ ^-1 rotated ~ 0 as @e[type=minecraft:marker,tag=NatureCraft.data,tag=NatureCraft.init,sort=nearest,limit=1] \
        run function naturecraft:place/init/0 with entity @s data.model

# 序列分配
scoreboard players operation @e[tag=NatureCraft.init] NatureCraft.uid = #S/N NatureCraft.uid
# 序列uid更新
scoreboard players add #S/N NatureCraft.uid 1

# 放置事件调用
## targe标签
tag @e[tag=NatureCraft.init] add NatureCraft.target
## 事件类型参数(0-place,1-leftclick,2-rightclick,3-random,4-clock)
scoreboard players set #event_type NatureCraft.var 0
execute as @e[type=minecraft:marker,tag=NatureCraft.data,tag=NatureCraft.init,sort=nearest,limit=1] at @s if data entity @s data.event.place run function naturecraft:event with entity @s data.event.place
## 标签重置
tag @e[tag=NatureCraft.target] remove NatureCraft.target
tag @e[tag=NatureCraft.init] remove NatureCraft.init