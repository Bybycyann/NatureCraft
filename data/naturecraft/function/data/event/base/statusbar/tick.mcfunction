# as: NatureCraft.event.statusbar
scoreboard players remove @s NatureCraft.clock 1
execute if score @s NatureCraft.clock matches 0 run kill @s