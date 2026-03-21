# 防重复标记
execute if entity @s[tag=NatureCraft.mark] run return 0
# temp标记
execute unless score #randomTickSpeed NatureCraft.var matches ..0 positioned ~30000008.01 ~30000008.01 ~30000008.01 positioned ~72057594037927936 ~72057594037927936 ~72057594037927936 positioned ~-72057594037927936 ~-72057594037927936 ~-72057594037927936 positioned ~-30000016.001 ~-30000016.001 ~-30000016.001 run tag @e[tag=NatureCraft.randomtick,tag=NatureCraft.data,type=minecraft:marker,dx=15.002,dy=15.002,dz=15.002] add temp
# 随机刻事件
scoreboard players operation #i NatureCraft.var = #randomTickSpeed NatureCraft.var
function naturecraft:randomtick/__
execute as @e[tag=temp,distance=..28] run function naturecraft:randomtick/_
