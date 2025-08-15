# NatureCraft.data

# 朝向标准化
rotate @s ~ ~
execute store result score #Temp NatureCraft.var run data get entity @s Rotation[0]
execute if score #Temp NatureCraft.var matches -45..45 run rotate @s 0.0 0.0
execute if score #Temp NatureCraft.var matches 45..135 run rotate @s 90.0 0.0
execute if score #Temp NatureCraft.var matches -135..-45 run rotate @s -90.0 0.0
execute unless score #Temp NatureCraft.var matches -135..135 run rotate @s 180.0 0.0

# 模板数据填充
$data modify entity @s data set from storage $(name) model.$(nbt).template
function naturecraft:place/init/template with entity @s data
# 模型数据填充
$data modify entity @s data merge from storage $(name) model.$(nbt).model
# 模型属性继承
$data modify entity @s data.model.name set value "$(name)"
$data modify entity @s data.model.nbt set value "$(nbt)"

# 模型
execute rotated as @s run function naturecraft:place/init/model/0
# 光照
execute if data entity @s data.light_level run function naturecraft:place/init/light
# 碰撞箱
execute if data entity @s data.collision_box rotated as @s run function naturecraft:place/init/collision_box with entity @s data.collision_box
# 交互箱
execute if data entity @s data.interaction_box rotated as @s run function naturecraft:place/init/interaction_box with entity @s data.interaction_box