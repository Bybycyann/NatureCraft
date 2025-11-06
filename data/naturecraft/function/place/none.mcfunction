# 朝向参数
scoreboard players set #facing NatureCraft.var 1

# 数据转移(这里绕一步先生成交互实体是因为Marker没碰撞体积在遇到不完整方块(比如半砖)一类不能正常生成在上表面)
summon minecraft:marker ~ ~ ~ {Tags:["NatureCraft.data","NatureCraft.init"]}
data modify entity @e[type=minecraft:marker,tag=NatureCraft.init,sort=nearest,limit=1] data set from entity @s data
kill @s

# 数据填充与初始化
execute facing ^ ^ ^-1 rotated ~ 0 as @e[type=minecraft:marker,tag=NatureCraft.data,tag=NatureCraft.init,sort=nearest,limit=1] \
        run function naturecraft:place/init/0 with entity @s data.model
# 实体数据精简
execute as @e[type=minecraft:marker,tag=NatureCraft.data,tag=NatureCraft.init,sort=nearest,limit=1] run \
        function naturecraft:place/datasimp

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