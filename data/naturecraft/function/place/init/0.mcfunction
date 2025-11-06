# NatureCraft.data

# 模板数据填充
$data modify storage naturecraft:main data set from storage $(name) model.$(nbt).template
function naturecraft:place/init/template with storage naturecraft:main data
data modify entity @s Tags append from storage naturecraft:main data.Tags[]
# 模型数据填充
$data modify storage naturecraft:main data merge from storage $(name) model.$(nbt).model
data modify entity @s Tags append from storage naturecraft:main data.Tags[]
# 模型属性继承
$data modify storage naturecraft:main data.model.name set value "$(name)"
$data modify storage naturecraft:main data.model.nbt set value "$(nbt)"
data modify entity @s data set from storage naturecraft:main data

# 朝向标准化
execute unless data storage naturecraft:main data{towards:false} run rotate @s ~ ~
execute store result score #rot NatureCraft.var run data get entity @s Rotation[0]
## S
execute if score #rot NatureCraft.var matches -45..45 run rotate @s 0.0 0.0
## W
execute if score #rot NatureCraft.var matches 45..135 run rotate @s 90.0 0.0
## E
execute if score #rot NatureCraft.var matches -135..-45 run rotate @s -90.0 0.0
## N
execute unless score #rot NatureCraft.var matches -135..135 run rotate @s -180.0 0.0

# 物品模型数据(item_model)
execute unless data storage naturecraft:main data.display.item_model run data modify entity @s data.display.item_model set from storage naturecraft:main data.display.model

# 状态映射
## Facing
execute unless score #facing NatureCraft.var matches 1 if data storage naturecraft:main data.states run function naturecraft:place/init/states/facing
## Link
execute if data storage naturecraft:main data{type:"link"} at @s align xyz run function naturecraft:place/init/states/link/0
## Predicate
# (待补充)

# 时钟与随机刻
## 随机刻
execute if data storage naturecraft:main data.event.random run tag @s add NatureCraft.randomtick
## 时钟
execute if data storage naturecraft:main data.event.clock run function naturecraft:clock/init

# 模型
execute rotated as @s align xyz positioned ~0.5 ~ ~0.5 run function naturecraft:place/init/model/0
## 悬挂变换(弃案)
# execute unless score #facing NatureCraft.var matches 1 as @e[type=minecraft:item_display,tag=NatureCraft.display,tag=NatureCraft.init,sort=nearest] run function naturecraft:place/init/model/hang/0

# 骑乘
execute if data storage naturecraft:main data.ride run function naturecraft:place/init/ride with storage naturecraft:main data.ride.height
# 光照
execute if data storage naturecraft:main data.light_level run function naturecraft:place/init/light
# 碰撞箱
execute if data storage naturecraft:main data.collision_box rotated as @s run function naturecraft:place/init/collision_box with storage naturecraft:main data.collision_box
# 交互箱
execute if data storage naturecraft:main data.interaction_box rotated as @s run function naturecraft:place/init/interaction_box with storage naturecraft:main data.interaction_box

# 初始化实体指针
data modify entity @n[type=minecraft:interaction,tag=NatureCraft.init] interaction set value {player:[I;0,0,0,0],timestamp:2L}
data modify entity @n[type=minecraft:interaction,tag=NatureCraft.init] interaction.player set from entity @a[tag=NatureCraft.target,sort=nearest,limit=1] UUID