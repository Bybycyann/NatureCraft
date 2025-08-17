# 生长机制
execute unless predicate {condition:"minecraft:location_check",predicate:{light:{light:{min:9}}}} run return 0
execute store result score #random NatureCraft.var run random value 1..5
execute unless score #random NatureCraft.var matches 1 run return 0
# 粒子
particle egg_crack ~ ~ ~ 0.4 0.4 0.4 0 20
# 模型变换
function naturecraft:data/event/base/variant with storage naturecraft:main const
# 随机刻标签移除
tag @s remove NatureCraft.randomtick