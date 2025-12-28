# ```
# while i > 0:
#   if (stack[-1]['copy'][0] == stack[-2]['y']):
#     return 1
#   loaded_chunk[0][1].append(loaded_chunk[0][1][0])
#   del loaded_chunk[0][1][0]
#   del stack[-1]['copy'][0]
#   i -= 1
# return 0
# ```
execute store result score #boole NatureCraft.var run data modify storage naturecraft:main io.stack[-1].copy[0] set from storage naturecraft:main io.stack[-2].y
execute if score #boole NatureCraft.var matches 0 run return run scoreboard players set #boole NatureCraft.var 1
# data modify storage naturecraft:main loaded_chunk[0][1] append from storage naturecraft:main loaded_chunk[0][1][0]
# data remove storage naturecraft:main loaded_chunk[0][1][0]
data remove storage naturecraft:main io.stack[-1].copy[0]
scoreboard players remove #i NatureCraft.var 1
execute if score #i NatureCraft.var matches ..0 run return run scoreboard players set #boole NatureCraft.var 0
function naturecraft:random_tick/init/if1/true/1