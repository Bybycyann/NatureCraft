# NatureCraft.data

# 生成展示实体
summon minecraft:item_display ~ ~ ~ {Tags: ["NatureCraft.root","NatureCraft.display","NatureCraft.init"],\
    item: {\
        id: "minecraft:chest",\
        components: {\
            "minecraft:item_model": "naturecraft:debug/error"}}}
# 朝向
rotate @e[type=minecraft:item_display,tag=NatureCraft.init,tag=NatureCraft.display,sort=nearest,limit=1] ~ ~
# 渲染变换
data modify entity @e[type=minecraft:item_display,tag=NatureCraft.init,tag=NatureCraft.display,sort=nearest,limit=1] {} merge from storage naturecraft:main data.display.common
# 模型数据
data modify entity @e[type=minecraft:item_display,tag=NatureCraft.init,tag=NatureCraft.display,sort=nearest,limit=1] item.components."minecraft:item_model" set from storage naturecraft:main data.display.model
# 模型映射变换源(custom_model_data)
data modify entity @e[type=minecraft:item_display,tag=NatureCraft.init,tag=NatureCraft.display,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set from storage naturecraft:main data.custom_model_data
# CustomName _fuck rename update_
data modify entity @e[type=minecraft:item_display,tag=NatureCraft.init,tag=NatureCraft.display,sort=nearest,limit=1] item.components."minecraft:item_name" set from storage naturecraft:main data.item_name

# 子模型
execute unless data storage naturecraft:main data.display.submodels run return 0
# 转存与计数
data modify storage naturecraft:main submodels set from storage naturecraft:main data.display.submodels
execute store result score #Temp NatureCraft.var run data get storage naturecraft:main submodels
execute if score #Temp NatureCraft.var matches ..0 run return 0
# 子模型生成
function naturecraft:place/init/model/sub