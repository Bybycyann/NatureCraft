scoreboard players remove #i NatureCraft.var 1
# 子区块空间响应
execute store result score #random NatureCraft.var run random value 1..4096
execute if score #random NatureCraft.var > #randomTickSpeed NatureCraft.var run return run execute unless score #i NatureCraft.var matches ..0 run function naturecraft:randomtick/__

# 抽取
tag @e[tag=temp,distance=..28,sort=random,limit=1] add NatureCraft.target
# 事件
execute as @e[tag=NatureCraft.target,limit=1] run function naturecraft:randomtick/___
# 循环抽取
execute unless score #i NatureCraft.var matches ..0 run function naturecraft:randomtick/__
