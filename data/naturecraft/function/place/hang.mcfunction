# 朝向参数
execute store result score #facing NatureCraft.var run data get entity @s Facing

# 数据转移
summon minecraft:marker ~ ~ ~ {Tags:["NatureCraft.data","NatureCraft.init"]}
data modify entity @e[type=minecraft:marker,tag=NatureCraft.init,sort=nearest,limit=1] data set from entity @s data
kill @s

# 数据填充与初始化
execute facing ^ ^ ^-1 rotated ~ 0 as @e[type=minecraft:marker,tag=NatureCraft.data,tag=NatureCraft.init,sort=nearest,limit=1] \
        run function naturecraft:place/init/0 with entity @s data.model