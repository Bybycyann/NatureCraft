# ```
# j = len(loaded_chunk[0][1])
# stack[-1]['sub_chunk'] = loaded_chunk[0][1].copy()
# for _ in range(j):
#   stack[-1]['sub_chunk_pos'][1] = stack[-1]['sub_chunk'][0] * 16
#   random_tick.main()
#   del stack[-1]['sub_chunk'][0]
# loaded_chunk.append(loaded_chunk[0])
# del loaded_chunk[0]
# ```
execute store result score #j NatureCraft.var run data get storage naturecraft:main loaded_chunk[0][1]
data modify storage naturecraft:main io.stack[-1].sub_chunk set from storage naturecraft:main loaded_chunk[0][1]
execute if score #j NatureCraft.var matches 1.. summon minecraft:marker run function naturecraft:random_tick/loaded_chunk/for2
data modify storage naturecraft:main loaded_chunk append from storage naturecraft:main loaded_chunk[0]
data remove storage naturecraft:main loaded_chunk[0]