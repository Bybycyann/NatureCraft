# ```
# 生成函数
# @param
# namespace : 模型所属命名空间
# id : 模型ID
# command : 调用生成事件时的追加指令, 若无推荐写入 help
# ```

data modify storage naturecraft:main io.stack append value {}
$data modify storage naturecraft:main io.stack[-1].CONTEXT.namespace_id set value "$(namespace):$(id)"
$execute store success score #boole NatureCraft.var run data modify storage naturecraft:main io.stack[-1] merge from storage $(namespace):naturecraft registry.$(id)
execute if score #boole NatureCraft.var matches 0 run return run function naturecraft:api/summon/errors/0
execute align xyz positioned ~0.5 ~ ~0.5 summon minecraft:marker run function naturecraft:api/summon/_
$execute as @e[tag=NatureCraft.init,tag=NatureCraft.data,type=minecraft:marker,limit=1] run $(command)
execute at @s run function naturecraft:place/main
data remove storage naturecraft:main io.stack[-1]
