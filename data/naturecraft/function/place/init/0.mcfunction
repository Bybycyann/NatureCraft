# NatureCraft.data

# 模板数据填充
$data modify entity @s data set from storage $(name) model.$(nbt).template
function naturecraft:place/init/template with entity @s data
# 模型数据填充
$data modify entity @s data merge from storage $(name) model.$(nbt).model
# 模型属性继承
$data modify entity @s data.model.name set value "$(name)"
$data modify entity @s data.model.nbt set value "$(nbt)"

# 朝向标准化
execute unless data entity @s data{towards:false} run rotate @s ~ ~
execute store result score #rot NatureCraft.var run data get entity @s Rotation[0]
## S
execute if score #rot NatureCraft.var matches -45..45 run rotate @s 0.0 0.0
## W
execute if score #rot NatureCraft.var matches 45..135 run rotate @s 90.0 0.0
## E
execute if score #rot NatureCraft.var matches -135..-45 run rotate @s -90.0 0.0
## N
execute unless score #rot NatureCraft.var matches -135..135 run rotate @s -180.0 0.0

# facing状态映射
execute unless score #facing NatureCraft.var matches 1 if data entity @s data.states run function naturecraft:place/init/states

# 模型
execute rotated as @s align xyz positioned ~0.5 ~ ~0.5 run function naturecraft:place/init/model/0

## 悬挂变换(弃案)
# execute unless score #facing NatureCraft.var matches 1 as @e[type=minecraft:item_display,tag=NatureCraft.display,tag=NatureCraft.init,sort=nearest] run function naturecraft:place/init/model/hang/0

# 光照
execute if data entity @s data.light_level run function naturecraft:place/init/light
# 碰撞箱
execute if data entity @s data.collision_box rotated as @s run function naturecraft:place/init/collision_box with entity @s data.collision_box
# 交互箱
execute if data entity @s data.interaction_box rotated as @s run function naturecraft:place/init/interaction_box with entity @s data.interaction_box