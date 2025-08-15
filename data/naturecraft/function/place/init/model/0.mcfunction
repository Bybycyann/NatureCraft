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
data modify entity @e[type=minecraft:item_display,tag=NatureCraft.init,tag=NatureCraft.display,sort=nearest,limit=1] {} merge from entity @s data.display.common
# 模型数据
data modify entity @e[type=minecraft:item_display,tag=NatureCraft.init,tag=NatureCraft.display,sort=nearest,limit=1] item.components."minecraft:item_model" set from entity @s data.display.model

# 子模型
execute unless data entity @s data.display.submodels run return 0
# 转存与计数
data modify storage naturecraft:main submodels set from entity @s data.display.submodels
execute store result score #Temp NatureCraft.var run data get storage naturecraft:main submodels
execute if score #Temp NatureCraft.var matches ..0 run return 0
# 子模型生成
function naturecraft:place/init/model/sub