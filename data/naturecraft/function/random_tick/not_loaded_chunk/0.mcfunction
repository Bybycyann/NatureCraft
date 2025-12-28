# ```
# def if_loaded():
#   if (chunk not loaded):
#       return 0
#   else:
#       return 1
# 
# i = len(not_loaded_chunk)
# stack.append({})
# for _ in range(i):
#   stack[-1]['sub_chunk_pos'] = not_loaded_chunk[0][0].copy()
#   stack[-1]['sub_chunk_pos'][0] *= 16
#   stack[-1]['sub_chunk_pos'][2] *= 16
#   if (not loaded):
#     not_loaded_chunk.append(not_loaded_chunk[0])
#     del not_loaded_chunk[0]
#   else:
#     loaded_chunk.append(loaded_chunk[0])
#     del not_loaded_chunk[0]
# del stack[-1]
# ```
execute store result score #i NatureCraft.var run data get storage naturecraft:main not_loaded_chunk
data modify storage naturecraft:main io.stack append value {}
execute if score #i NatureCraft.var matches 1.. run function naturecraft:random_tick/not_loaded_chunk/for1/0
data remove storage naturecraft:main io.stack[-1]
schedule function naturecraft:random_tick/not_loaded_chunk/0 10s replace