# ```
# if (chunk not loaded):
#   return 0
# else:
#   return 1
# ```
kill @s
tag @s add temp
data modify entity @s Pos set from storage naturecraft:main io.stack[-1].sub_chunk_pos
execute at @s unless loaded ~ ~ ~ run return run scoreboard players set #boole NatureCraft.var 0
return run scoreboard players set #boole NatureCraft.var 1