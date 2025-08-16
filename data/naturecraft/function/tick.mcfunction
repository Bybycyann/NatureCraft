# 随机刻模拟
execute if score #TESTCLOCK .NEKOTEMP matches 100 as @e[type=minecraft:marker,tag=NatureCraft.data,tag=NatureCraft.randomtick] run function naturecraft:randomtick/0
tag @e[type=minecraft:marker,tag=NatureCraft.mark] remove NatureCraft.mark
# execute if score #TESTCLOCK .NEKOTEMP matches 100 run scoreboard players set #TESTCLOCK .NEKOTEMP 0
# scoreboard players add #TESTCLOCK .NEKOTEMP 1