# 删除模型

tp @e[tag=NatureCraft.target] ~ -130 ~
kill @e[tag=NatureCraft.target]
execute unless block ~ ~ ~ minecraft:light unless block ~ ~ ~ minecraft:barrier run return 0
setblock ~ ~ ~ minecraft:air