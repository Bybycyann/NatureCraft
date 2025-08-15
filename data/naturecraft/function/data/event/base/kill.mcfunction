# 删除模型与光照

tp @e[tag=NatureCraft.target] ~ -130 ~
kill @e[tag=NatureCraft.target]
execute if block ~ ~ ~ minecraft:light run setblock ~ ~ ~ minecraft:air