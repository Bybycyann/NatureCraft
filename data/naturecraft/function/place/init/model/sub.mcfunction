# NatureCraft.data
# 生成展示实体 sub标签结束后删除
summon minecraft:item_display ~ ~ ~ {Tags: ["NatureCraft.sub","NatureCraft.display","NatureCraft.init"],\
    item: {\
        id: "minecraft:paper",\
        components: {\
            "minecraft:item_model": "naturecraft:debug/error"}}}
# 朝向
rotate @e[type=minecraft:item_display,tag=NatureCraft.init,tag=NatureCraft.display,tag=NatureCraft.sub,sort=nearest,limit=1] ~ ~
# 渲染变换
data modify entity @e[type=minecraft:item_display,tag=NatureCraft.init,tag=NatureCraft.display,tag=NatureCraft.sub,sort=nearest,limit=1] {} merge from storage naturecraft:main submodels[0].common
# 模型数据
data modify entity @e[type=minecraft:item_display,tag=NatureCraft.init,tag=NatureCraft.display,tag=NatureCraft.sub,sort=nearest,limit=1] item.components."minecraft:item_model" set from storage naturecraft:main submodels[0].model

# 骑乘
ride @e[type=minecraft:item_display,tag=NatureCraft.init,tag=NatureCraft.display,tag=NatureCraft.sub,sort=nearest,limit=1] mount @e[type=minecraft:item_display,tag=NatureCraft.init,tag=NatureCraft.display,sort=nearest,limit=1]

# 列表与标签处理
data remove storage naturecraft:main submodels[0]
tag @e[tag=NatureCraft.init,tag=NatureCraft.display,tag=NatureCraft.sub] remove NatureCraft.sub

# 循环计数--
scoreboard players remove #Temp NatureCraft.var 1
execute unless score #Temp NatureCraft.var matches ..0 run function naturecraft:place/init/model/sub