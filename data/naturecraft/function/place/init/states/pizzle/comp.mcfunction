# 状态编码 storage naturecraft:main states.code
# 秘钥 storage naturecraft:main states.list[0].condition.code

# condition
scoreboard players set #boole NatureCraft.var 0

# ↑
execute store result score #Temp NatureCraft.var run data get storage naturecraft:main states.list[0].condition.code[0]
execute unless score #Temp NatureCraft.var matches -1 store success score #Temp NatureCraft.var run data modify storage naturecraft:main states.code[0] set from storage naturecraft:main states.list[0].condition.code[0]
execute if score #Temp NatureCraft.var matches 1 run return 0
# NE
execute store result score #Temp NatureCraft.var run data get storage naturecraft:main states.list[0].condition.code[1]
execute unless score #Temp NatureCraft.var matches -1 store success score #Temp NatureCraft.var run data modify storage naturecraft:main states.code[1] set from storage naturecraft:main states.list[0].condition.code[1]
execute if score #Temp NatureCraft.var matches 1 run return 0
# N
execute store result score #Temp NatureCraft.var run data get storage naturecraft:main states.list[0].condition.code[2]
execute unless score #Temp NatureCraft.var matches -1 store success score #Temp NatureCraft.var run data modify storage naturecraft:main states.code[2] set from storage naturecraft:main states.list[0].condition.code[2]
execute if score #Temp NatureCraft.var matches 1 run return 0
# NW
execute store result score #Temp NatureCraft.var run data get storage naturecraft:main states.list[0].condition.code[3]
execute unless score #Temp NatureCraft.var matches -1 store success score #Temp NatureCraft.var run data modify storage naturecraft:main states.code[3] set from storage naturecraft:main states.list[0].condition.code[3]
execute if score #Temp NatureCraft.var matches 1 run return 0
# W
execute store result score #Temp NatureCraft.var run data get storage naturecraft:main states.list[0].condition.code[4]
execute unless score #Temp NatureCraft.var matches -1 store success score #Temp NatureCraft.var run data modify storage naturecraft:main states.code[4] set from storage naturecraft:main states.list[0].condition.code[4]
execute if score #Temp NatureCraft.var matches 1 run return 0
# SW
execute store result score #Temp NatureCraft.var run data get storage naturecraft:main states.list[0].condition.code[5]
execute unless score #Temp NatureCraft.var matches -1 store success score #Temp NatureCraft.var run data modify storage naturecraft:main states.code[5] set from storage naturecraft:main states.list[0].condition.code[5]
execute if score #Temp NatureCraft.var matches 1 run return 0
# S
execute store result score #Temp NatureCraft.var run data get storage naturecraft:main states.list[0].condition.code[6]
execute unless score #Temp NatureCraft.var matches -1 store success score #Temp NatureCraft.var run data modify storage naturecraft:main states.code[6] set from storage naturecraft:main states.list[0].condition.code[6]
execute if score #Temp NatureCraft.var matches 1 run return 0
# SE
execute store result score #Temp NatureCraft.var run data get storage naturecraft:main states.list[0].condition.code[7]
execute unless score #Temp NatureCraft.var matches -1 store success score #Temp NatureCraft.var run data modify storage naturecraft:main states.code[7] set from storage naturecraft:main states.list[0].condition.code[7]
execute if score #Temp NatureCraft.var matches 1 run return 0
# E
execute store result score #Temp NatureCraft.var run data get storage naturecraft:main states.list[0].condition.code[8]
execute unless score #Temp NatureCraft.var matches -1 store success score #Temp NatureCraft.var run data modify storage naturecraft:main states.code[8] set from storage naturecraft:main states.list[0].condition.code[8]
execute if score #Temp NatureCraft.var matches 1 run return 0
# ↓
execute store result score #Temp NatureCraft.var run data get storage naturecraft:main states.list[0].condition.code[9]
execute unless score #Temp NatureCraft.var matches -1 store success score #Temp NatureCraft.var run data modify storage naturecraft:main states.code[9] set from storage naturecraft:main states.list[0].condition.code[9]
execute if score #Temp NatureCraft.var matches 1 run return 0

# condition
scoreboard players set #boole NatureCraft.var 1