# 按原模型破坏

# 掉落物生成
## 默认
execute if data entity @s data{type:"none"} \
        as @n[type=minecraft:interaction,tag=NatureCraft.interaction_box,tag=NatureCraft.target] on target if entity @s[gamemode=!creative] run \
        summon minecraft:item ~ ~ ~ {Tags:["NatureCraft.drop"],\
          Item:{\
            "id":"minecraft:cow_spawn_egg",\
            components:{\
              "minecraft:item_model":"minecraft:air"\
            }\
          },\
          Motion:[0.0,0.2,0.0],PickupDelay:10s}
## 悬挂实体
execute if data entity @s data{type:"hang"} \
        as @n[type=minecraft:interaction,tag=NatureCraft.interaction_box,tag=NatureCraft.target] on target if entity @s[gamemode=!creative] run \
        summon minecraft:item ~ ~ ~ {Tags:["NatureCraft.drop"],\
          Item:{\
            "id":"minecraft:item_frame",\
            components:{\
              "minecraft:item_model":"minecraft:air"\
            }\
          },\
          Motion:[0.0,0.2,0.0],PickupDelay:10s}
# 数据填充
## 名称
data modify entity @n[type=minecraft:item,tag=NatureCraft.drop] Item.components."minecraft:item_name" set from entity @s data.item_name
## 模型
data modify entity @n[type=minecraft:item,tag=NatureCraft.drop] Item.components."minecraft:item_model" set from entity @s data.display.model
## 模型属性
data modify entity @n[type=minecraft:item,tag=NatureCraft.drop] Item.components."minecraft:custom_data".naturecraft set value {}
## 默认
execute if data entity @s data{type:"none"} run \
        data modify entity @n[type=minecraft:item,tag=NatureCraft.drop] Item.components."minecraft:entity_data" set value {"id": "minecraft:interaction","Tags": ["NatureCraft.init"]}
execute if data entity @s data{type:"hang"} run \
        data modify entity @n[type=minecraft:item,tag=NatureCraft.drop] Item.components."minecraft:entity_data" set value {"id": "minecraft:item_frame","Tags": ["NatureCraft.init"]}
data modify entity @n[type=minecraft:item,tag=NatureCraft.drop] Item.components."minecraft:entity_data".data.model set from entity @s data.model
# 标签清除
tag @n[type=minecraft:item,tag=NatureCraft.drop] remove NatureCraft.drop

# 音效

# 粒子

# 删除实体
function naturecraft:data/event/base/kill