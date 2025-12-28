# 防重复标记
execute if entity @s[tag=NatureCraft.mark] run return 0

# 标记子区块
data modify storage naturecraft:main temp set from entity @s Pos
execute store result score #markX NatureCraft.var run data get storage naturecraft:main temp[0]
execute store result score #markY NatureCraft.var run data get storage naturecraft:main temp[1]
execute store result score #markZ NatureCraft.var run data get storage naturecraft:main temp[2]
scoreboard players set #Temp NatureCraft.var 16
scoreboard players operation #markX NatureCraft.var /= #Temp NatureCraft.var
scoreboard players operation #markY NatureCraft.var /= #Temp NatureCraft.var
scoreboard players operation #markZ NatureCraft.var /= #Temp NatureCraft.var
scoreboard players operation #markX NatureCraft.var *= #Temp NatureCraft.var
scoreboard players operation #markY NatureCraft.var *= #Temp NatureCraft.var
scoreboard players operation #markZ NatureCraft.var *= #Temp NatureCraft.var
execute at @s summon minecraft:marker run data modify entity @s Tags set value ["NatureCraft.marker"]
execute store result storage naturecraft:main temp[0] double 1.0 run scoreboard players get #markX NatureCraft.var
execute store result storage naturecraft:main temp[1] double 1.0 run scoreboard players get #markY NatureCraft.var
execute store result storage naturecraft:main temp[2] double 1.0 run scoreboard players get #markZ NatureCraft.var
data modify entity @e[tag=NatureCraft.marker,type=minecraft:marker,sort=nearest,limit=1] Pos set from storage naturecraft:main temp

# as|at chunk marker
execute as @e[tag=NatureCraft.marker,type=minecraft:marker,sort=nearest,limit=1] at @s positioned ~ ~-0.001 ~ run function naturecraft:randomtick/chunk_marker