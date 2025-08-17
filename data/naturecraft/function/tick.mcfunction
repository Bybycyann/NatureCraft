# 随机刻模拟
execute as @e[type=minecraft:marker,tag=NatureCraft.data,tag=NatureCraft.randomtick] run function naturecraft:randomtick/0
tag @e[type=minecraft:marker,tag=NatureCraft.mark] remove NatureCraft.mark