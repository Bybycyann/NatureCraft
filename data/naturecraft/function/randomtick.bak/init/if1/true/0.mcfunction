# ```
# stack.append({})
# i = len(loaded_chunk)
# stack[-1]['copy'] = loaded_chunk[0][1].copy()
# boole = if1.true.if(i)
# if (boole == 0):
#   loaded_chunk[0][1].append(stack[-2]['y'])
# del stack[-1]
# ```
data modify storage naturecraft:main io.stack append value {copy:[]}
execute store result score #i NatureCraft.var run data get storage naturecraft:main loaded_chunk[0][1]
data modify storage naturecraft:main io.stack[-1].copy set from storage naturecraft:main loaded_chunk[0][1]
function naturecraft:random_tick/init/if1/true/1
execute if score #boole NatureCraft.var matches 0 run data modify storage naturecraft:main loaded_chunk[0][1] append from storage naturecraft:main io.stack[-2].y
data remove storage naturecraft:main io.stack[-1]