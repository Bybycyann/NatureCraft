# 删除模型

tp @e[type=!minecraft:player,tag=NatureCraft.target] ~ -130 ~
kill @e[type=!minecraft:player,tag=NatureCraft.target]
execute unless block ~ ~ ~ minecraft:light unless block ~ ~ ~ minecraft:barrier run return 0
setblock ~ ~ ~ minecraft:air