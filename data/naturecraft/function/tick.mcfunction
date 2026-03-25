# 自然生成处理
execute as @e[tag=NatureCraft.natural] at @s rotated 0 0 run function naturecraft:place/natural

# 碰撞箱属性动态更新(咕)

# 随机刻模拟
# 读取randomTickSpeed
execute store result score #randomTickSpeed NatureCraft.var run gamerule random_tick_speed
execute unless score #randomTickSpeed NatureCraft.var matches ..0 as @e[tag=NatureCraft.randomtick,tag=NatureCraft.data,type=minecraft:marker] at @s run function naturecraft:randomtick/0
tag @e[tag=NatureCraft.mark,type=minecraft:marker] remove NatureCraft.mark
# 性能灾难
# function naturecraft:random_tick/0

# 时钟
execute as @e[tag=NatureCraft.clock,tag=NatureCraft.data,type=minecraft:marker] run function naturecraft:clock/0

# 事件tick
function #naturecraft:event_tick
