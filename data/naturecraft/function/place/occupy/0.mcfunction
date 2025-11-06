scoreboard players set #temp NatureCraft.var 0
execute store result score #boole NatureCraft.var run function naturecraft:place/occupy/1
execute if score #boole NatureCraft.var matches 0 if data entity @s data.loot_table run function naturecraft:place/item_return with entity @s data
execute if score #boole NatureCraft.var matches 0 run return run kill @s