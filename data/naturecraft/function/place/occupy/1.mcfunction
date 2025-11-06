tp @s ~ ~ ~ ~ ~ 
# 可放置 - 1, 不可放置 - 0
scoreboard players set #boole NatureCraft.var 0
execute if block ~ ~ ~ #naturecraft:replaceable align xyz unless entity @e[dx=0,tag=NatureCraft.data] store success score #boole NatureCraft.var run return 1
scoreboard players add #temp NatureCraft.var 1
execute if score #temp NatureCraft.var matches 2.. run return 0
execute positioned ~ ~1 ~ align y run function naturecraft:place/occupy/1