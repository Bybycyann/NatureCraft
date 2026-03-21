# ```
# stack[-1]['sub_chunk_pos'] = loaded_chunk[0][0].copy()
# stack[-1]['sub_chunk_pos'][0] *= 16
# stack[-1]['sub_chunk_pos'][2] *= 16
# if (not loaded):
#   not_loaded_chunk.append(loaded_chunk[0])
#   del loaded_chunk[0]
# else:
#   j = len(loaded_chunk[0][1])
#   stack[-1]['sub_chunk'] = loaded_chunk[0][1].copy()
#   for _ in range(j):
#     stack[-1]['sub_chunk_pos'][1] = stack[-1]['sub_chunk'][0] * 16
#     random_tick.main()
#     del stack[-1]['sub_chunk'][0]
#   loaded_chunk.append(loaded_chunk[0])
#   del loaded_chunk[0]
# ```
data modify storage naturecraft:main io.stack[-1].sub_chunk_pos set value [0, 0, 0]
execute store result storage naturecraft:main io.stack[-1].sub_chunk_pos[0] int 16 run data get storage naturecraft:main loaded_chunk[0][0][0]
execute store result storage naturecraft:main io.stack[-1].sub_chunk_pos[2] int 16 run data get storage naturecraft:main loaded_chunk[0][0][2]

execute summon minecraft:marker run function naturecraft:random_tick/if_loaded
execute if score #boole NatureCraft.var matches 0 run function naturecraft:random_tick/loaded_chunk/append_not_loaded
execute if score #boole NatureCraft.var matches 1 run function naturecraft:random_tick/loaded_chunk/random_tick

scoreboard players remove #i NatureCraft.var 1
execute if score #i NatureCraft.var matches 0 run return 1
function naturecraft:random_tick/loaded_chunk/for1