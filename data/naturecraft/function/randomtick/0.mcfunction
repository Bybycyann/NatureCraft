# 防重复标记
execute if entity @s[tag=NatureCraft.mark] run return 0

# 标记子区块
execute store result score #markX NatureCraft.var run data get entity @s Pos[0]
execute store result score #markY NatureCraft.var run data get entity @s Pos[1]
execute store result score #markZ NatureCraft.var run data get entity @s Pos[2]
scoreboard players set #Temp NatureCraft.var 16
scoreboard players operation #markX NatureCraft.var /= #Temp NatureCraft.var
scoreboard players operation #markY NatureCraft.var /= #Temp NatureCraft.var
scoreboard players operation #markZ NatureCraft.var /= #Temp NatureCraft.var
scoreboard players operation #markX NatureCraft.var *= #Temp NatureCraft.var
scoreboard players operation #markY NatureCraft.var *= #Temp NatureCraft.var
scoreboard players operation #markZ NatureCraft.var *= #Temp NatureCraft.var
execute at @s summon minecraft:marker run data modify entity @s Tags set value ["NatureCraft.marker"]
execute store result entity @e[type=minecraft:marker,tag=NatureCraft.marker,sort=nearest,limit=1] Pos[0] double 1.0 run scoreboard players get #markX NatureCraft.var
execute store result entity @e[type=minecraft:marker,tag=NatureCraft.marker,sort=nearest,limit=1] Pos[1] double 1.0 run scoreboard players get #markY NatureCraft.var
execute store result entity @e[type=minecraft:marker,tag=NatureCraft.marker,sort=nearest,limit=1] Pos[2] double 1.0 run scoreboard players get #markZ NatureCraft.var

# 随机刻事件
## 获取 randomTickSpeed
execute store result score #cyc NatureCraft.var run gamerule randomTickSpeed
## 抽取
execute unless score #cyc NatureCraft.var matches ..0 at @n[type=minecraft:marker,tag=NatureCraft.marker] run function naturecraft:randomtick/roll

# 已执行目标标记
execute at @e[type=minecraft:marker,tag=NatureCraft.marker,sort=nearest,limit=1] as @e[type=minecraft:marker,tag=NatureCraft.data,tag=NatureCraft.randomtick,dx=15,dy=15,dz=15] run tag @s add NatureCraft.mark

# 清除子区块标记
kill @e[type=minecraft:marker,tag=NatureCraft.marker,sort=nearest,limit=1]