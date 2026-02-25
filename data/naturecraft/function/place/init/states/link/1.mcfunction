# 添加更新标签
# 读取状态列表入命令存储
$data modify storage naturecraft:main states.list set from storage $(name) model.$(nbt).model.states
execute store result score #Temp NatureCraft.var run data get storage naturecraft:main states.list
execute unless score #Temp NatureCraft.var matches ..0 run function naturecraft:place/init/states/link/2

# target标签
execute store result score #target NatureCraft.var run scoreboard players get @s NatureCraft.uid
execute as @e if score @s NatureCraft.uid = #target NatureCraft.var run tag @s add NatureCraft.target
# 模型更新
function naturecraft:data/event/base/model_updata
# 重置
tag @e[tag=NatureCraft.target] remove NatureCraft.target