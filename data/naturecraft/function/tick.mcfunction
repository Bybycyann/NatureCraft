# 碰撞箱属性动态更新(咕)

# 随机刻模拟
execute as @e[type=minecraft:marker,tag=NatureCraft.data,tag=NatureCraft.randomtick] run function naturecraft:randomtick/0
tag @e[type=minecraft:marker,tag=NatureCraft.mark] remove NatureCraft.mark

# 时钟
execute as @e[type=minecraft:marker,tag=NatureCraft.data,tag=NatureCraft.clock] run function naturecraft:clock/0