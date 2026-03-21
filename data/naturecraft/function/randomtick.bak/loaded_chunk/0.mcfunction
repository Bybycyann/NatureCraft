# ```
# def if_loaded():
#   if (chunk not loaded):
#       return 0
#   else:
#       return 1
# 
# i = len(loaded_chunk)
# stack.append({})
# for _ in range(i):
#   stack[-1]['sub_chunk_pos'] = loaded_chunk[0][0].copy()
#   stack[-1]['sub_chunk_pos'][0] *= 16
#   stack[-1]['sub_chunk_pos'][2] *= 16
#   boole = if_loaded()
#   if (boole == 0):
#     not_loaded_chunk.append(loaded_chunk[0])
#     del loaded_chunk[0]
#   else:
#     j = len(loaded_chunk[0][1])
#     stack[-1]['sub_chunk'] = loaded_chunk[0][1].copy()
#     for _ in range(j):
#       stack[-1]['sub_chunk_pos'][1] = stack[-1]['sub_chunk'][0] * 16
#       random_tick.main()
#       del stack[-1]['sub_chunk'][0]
#     loaded_chunk.append(loaded_chunk[0])
#     del loaded_chunk[0]
# del stack[-1]
# ```
execute store result score #i NatureCraft.var run data get storage naturecraft:main loaded_chunk
data modify storage naturecraft:main io.stack append value {}
execute if score #i NatureCraft.var matches 1.. run function naturecraft:random_tick/loaded_chunk/for1
data remove storage naturecraft:main io.stack[-1]