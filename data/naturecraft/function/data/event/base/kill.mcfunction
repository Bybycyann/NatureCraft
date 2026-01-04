# 删除模型

tp @e[type=!minecraft:player,tag=NatureCraft.target,tag=!NatureCraft.self] ~ -130 ~
kill @e[type=!minecraft:player,tag=NatureCraft.target,tag=!NatureCraft.self]
execute unless block ~ ~ ~ minecraft:light unless block ~ ~ ~ minecraft:barrier run return 0
setblock ~ ~ ~ minecraft:air