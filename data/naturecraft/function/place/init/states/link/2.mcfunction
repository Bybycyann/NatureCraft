# 重置状态编码
data modify storage naturecraft:main states.code set value [0,0,0,0,0,0,0,0,0,0]

# 根据标签匹配情况生成状态编码
function naturecraft:place/init/states/link/code with storage naturecraft:main states.list[0].condition
#        tellraw @a ["[Debug] ",{storage:"naturecraft:main",nbt:"states.code"}]

# 匹配
function naturecraft:place/init/states/link/comp
execute if score #boole NatureCraft.var matches 1 run return run data modify entity @s data merge from storage naturecraft:main states.list[0].model

# 循环
data remove storage naturecraft:main states.list[0]
execute store result score #Temp NatureCraft.var run data get storage naturecraft:main states.list
execute unless score #Temp NatureCraft.var matches ..0 run function naturecraft:place/init/states/link/2