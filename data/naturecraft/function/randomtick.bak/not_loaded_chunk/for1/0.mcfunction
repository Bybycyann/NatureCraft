# ```
# stack[-1]['sub_chunk_pos'] = not_loaded_chunk[0][0].copy()
# stack[-1]['sub_chunk_pos'][0] *= 16
# stack[-1]['sub_chunk_pos'][2] *= 16
# if (not loaded):
#   not_loaded_chunk.append(not_loaded_chunk[0])
#   del not_loaded_chunk[0]
# else:
#   loaded_chunk.append(loaded_chunk[0])
#   del not_loaded_chunk[0]
# ```
data modify storage naturecraft:main io.stack[-1].sub_chunk_pos set value [0, 0, 0]
execute store result storage naturecraft:main io.stack[-1].sub_chunk_pos[0] int 16 run data get storage naturecraft:main not_loaded_chunk[0][0][0]
execute store result storage naturecraft:main io.stack[-1].sub_chunk_pos[2] int 16 run data get storage naturecraft:main not_loaded_chunk[0][0][2]

execute summon minecraft:marker run function naturecraft:random_tick/if_loaded
execute if score #boole NatureCraft.var matches 0 run function naturecraft:random_tick/not_loaded_chunk/for1/if1/false
execute if score #boole NatureCraft.var matches 1 run function naturecraft:random_tick/not_loaded_chunk/for1/if1/true

scoreboard players remove #i NatureCraft.var 1
execute if score #i NatureCraft.var matches 0 run return 1
function naturecraft:random_tick/not_loaded_chunk/for1/0