execute as @s[tag=NatureCraft.mark] run return 0
execute at @s run particle egg_crack ~ ~ ~ 0.3 0.3 0.3 0 20
tag @e[type=minecraft:marker,tag=NatureCraft.data,tag=NatureCraft.randomtick,tag=!NatureCraft.mark] add NatureCraft.mark