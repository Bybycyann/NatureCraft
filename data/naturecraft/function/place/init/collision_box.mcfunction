# 屏障碰撞
execute if data entity @s data{collision_box:{barrier:true}} run return run setblock ~ ~ ~ minecraft:barrier

# 实体碰撞
## 碰撞箱实体组生成
$summon minecraft:interaction ^$(offset_x) ^$(offset_y) ^$(offset_z) {Tags: ["NatureCraft.collision_box","NatureCraft.init"],\
    height: 0,\
    width: 0}
summon minecraft:shulker ~ -100 ~ {Tags: ["NatureCraft.collision_box","temp"],\
    "active_effects": [{\
        "duration": -1,\
        "id": "minecraft:invisibility",\
        "show_particles": false\
    }],\
    NoAI:true,\
    Invulnerable:true,\
    Silent:true}
ride @e[tag=temp,tag=NatureCraft.collision_box,type=minecraft:shulker,limit=1] mount @e[tag=NatureCraft.init,tag=NatureCraft.collision_box,type=minecraft:interaction,limit=1]
## 尺寸属性
data modify entity @e[tag=temp,tag=NatureCraft.collision_box,type=minecraft:shulker,limit=1] attributes[{"id":"minecraft:scale"}].base set from entity @s data.collision_box.scale

tag @e[tag=temp,tag=NatureCraft.collision_box,type=minecraft:shulker,limit=1] remove temp