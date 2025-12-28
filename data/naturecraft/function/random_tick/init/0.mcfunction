# ```
# def count_if(i):
#   while i > 0:
#     if (stack[-1]['copy'][0][0] == stack[-1]['pos']):
#       return 1
#     loaded_chunk.append(loaded_chunk[0])
#     del loaded_chunk[0]
#     del stack[-1]['copy'][0]
#     i -= 1
#   return 0
# 
# def if1.true.if(i):
#   while i > 0:
#     if (stack[-1]['copy'][0][0] == stack[-1]['pos']):
#       return 1
#     loaded_chunk.append(loaded_chunk[0])
#     del loaded_chunk[0]
#     del stack[-1]['copy'][0]
#     i -= 1
#   return 0
# 
# @s.tag.add('NatureCraft.randomtick')
# 
# stack.append({'pos':[0,0,0],'y':0,'output':[[],[]],'copy':[]})
# stack[-1]['pos'] = @s['Pos'].copy()
# stack[-1]['pos'][0] = math.floor(stack[-1]['pos'][0] / 16)
# stack[-1]['pos'][1] = math.floor(stack[-1]['pos'][1] / 16)
# stack[-1]['pos'][2] = math.floor(stack[-1]['pos'][2] / 16)
# stack[-1]['y'] = stack[-1]['pos'][1]
# stack[-1]['pos'][1] = 0
# 
# i = len(loaded_chunk)
# stack[-1]['copy'] = loaded_chunk.copy()
# boole = count_if(i)
# if (boole == 1):
#   stack.append({})
#   i = len(loaded_chunk)
#   stack[-1]['copy'] = loaded_chunk[0][1].copy()
#   boole = if1.true.if(i)
#   if (boole == 0):
#     loaded_chunk[0][1].append(stack[-1]['y'])
#   del stack[-1]
# else:
#   stack[-1]['output'][0] = stack[-1]['pos'].copy()
#   stack[-1]['output'][1].append(stack[-2]['y'])
#   loaded_chunk.append(stack[-1]['output'])
# del stack[-1]
# ```
tag @s add NatureCraft.randomtick

data modify storage naturecraft:main io.stack append value {pos:[0,0,0],y:0,output:[[],[]],copy:[]}
data modify storage naturecraft:main io.stack[-1].pos set from entity @s Pos

execute store result storage naturecraft:main io.stack[-1].pos[0] int 1 run data get storage naturecraft:main io.stack[-1].pos[0] 0.25
execute store result storage naturecraft:main io.stack[-1].pos[0] int 1 run data get storage naturecraft:main io.stack[-1].pos[0] 0.25
execute store result storage naturecraft:main io.stack[-1].pos[1] int 1 run data get storage naturecraft:main io.stack[-1].pos[1] 0.25
execute store result storage naturecraft:main io.stack[-1].pos[1] int 1 run data get storage naturecraft:main io.stack[-1].pos[1] 0.25
execute store result storage naturecraft:main io.stack[-1].pos[2] int 1 run data get storage naturecraft:main io.stack[-1].pos[2] 0.25
execute store result storage naturecraft:main io.stack[-1].pos[2] int 1 run data get storage naturecraft:main io.stack[-1].pos[2] 0.25
data modify storage naturecraft:main io.stack[-1].y set from storage naturecraft:main io.stack[-1].pos[1]
data modify storage naturecraft:main io.stack[-1].pos[1] set value 0

execute store result score #i NatureCraft.var run data get storage naturecraft:main loaded_chunk
execute if score #i NatureCraft.var matches 1.. run data modify storage naturecraft:main io.stack[-1].copy set from storage naturecraft:main loaded_chunk
execute if score #i NatureCraft.var matches 1.. run function naturecraft:random_tick/init/count_if
execute if score #i NatureCraft.var matches ..0 run scoreboard players set #boole NatureCraft.var 0
execute if score #boole NatureCraft.var matches 0 run function naturecraft:random_tick/init/if1/false
execute if score #boole NatureCraft.var matches 1 run function naturecraft:random_tick/init/if1/true/0

data remove storage naturecraft:main io.stack[-1]