# 随机刻事件
## 获取 randomTickSpeed
execute store result score #randomTickSpeed NatureCraft.var run gamerule randomTickSpeed
## 抽取
execute unless score #randomTickSpeed NatureCraft.var matches ..0 run function naturecraft:randomtick/roll

# 标记已执行区块目标
tag @e[type=minecraft:marker,tag=NatureCraft.data,tag=NatureCraft.randomtick,dx=15,dy=15.001,dz=15] add NatureCraft.mark

# 清除子区块标记
kill @s

# Debug
# particle cloud ~ ~ ~
# tellraw @a {"entity":"@s",nbt:"Pos"}