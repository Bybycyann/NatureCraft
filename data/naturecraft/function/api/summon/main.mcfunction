# ```
# 生成函数
# ```

data modify storage naturecraft:main io.stack append value {}
$data modify storage naturecraft:main io.stack[-1] merge from storage $(namespace):naturecraft registry.$(id)
execute align xyz positioned ~0.5 ~ ~0.5 summon minecraft:marker run function naturecraft:api/summon/_
$execute as @e[tag=NatureCraft.init,tag=NatureCraft.data,type=minecraft:marker,limit=1] run $(command)
execute at @s run function naturecraft:place/main
data remove storage naturecraft:main io.stack[-1]
