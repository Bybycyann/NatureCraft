# ```
# stack[-1]['sub_chunk_pos'][1] = stack[-1].sub_chunk[0] * 16
# random_tick.main()
# del stack[-1].sub_chunk[0]
# ```
tag @s add temp

execute store result storage naturecraft:main io.stack[-1].sub_chunk_pos[1] int 16 run data get storage naturecraft:main io.stack[-1].sub_chunk[0]
data modify entity @s Pos set from storage naturecraft:main io.stack[-1].sub_chunk_pos

execute at @s positioned ~ ~-0.001 ~ run function naturecraft:random_tick/main/0

data remove storage naturecraft:main io.stack[-1].sub_chunk[0]
scoreboard players remove #j NatureCraft.var 1
execute if score #j NatureCraft.var matches ..0 run return run kill @s
function naturecraft:random_tick/loaded_chunk/for2