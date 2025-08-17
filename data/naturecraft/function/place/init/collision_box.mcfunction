# 屏障碰撞
execute if data entity @s data{collision_box:{barrier:true}} run return run setblock ~ ~ ~ minecraft:barrier

# 实体碰撞
## 碰撞箱实体组生成
$summon minecraft:interaction ^$(offset_x) ^$(offset_y) ^$(offset_z) {Tags: ["NatureCraft.collision_box","NatureCraft.init"],\
    height: 0,\
    width: 0}
summon minecraft:shulker ~ -100 ~ {Tags: ["NatureCraft.collision_box","NatureCraft.init"],\
    "active_effects": [{\
        "duration": -1,\
        "id": "minecraft:invisibility",\
        "show_particles": false\
    }],\
    NoAI:true,\
    Invulnerable:true,\
    Silent:true}
ride @e[type=minecraft:shulker,tag=NatureCraft.init,tag=NatureCraft.collision_box,sort=nearest,limit=1] mount @e[type=minecraft:interaction,tag=NatureCraft.init,tag=NatureCraft.collision_box,sort=nearest,limit=1]
## 尺寸属性
data modify entity @e[type=minecraft:shulker,tag=NatureCraft.init,tag=NatureCraft.collision_box,sort=nearest,limit=1] attributes[{"id":"minecraft:scale"}].base set from entity @s data.collision_box.scale