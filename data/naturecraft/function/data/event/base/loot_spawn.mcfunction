# ```
# 按战利品表生成物品
# 参数 :
# loot_table : 一个战利品表(支持内联)。
# ```

# 生成掉落物
$execute as @e[type=minecraft:interaction,tag=NatureCraft.interaction_box,tag=NatureCraft.target] on target run \
        loot spawn ~ ~ ~ loot $(loot_table)
## 掉落物动量
# execute as @e[type=minecraft:item,distance=0] if data entity @s {Age:0s} run data merge entity @s {Motion:[0.0,0.2,0.0],PickupDelay:10s,Tags:["NatureCraft.drop"]}
# execute as @e[type=minecraft:item,tag=NatureCraft.drop,distance=0] store result entity @s Motion[0] double 0.0001 run random value -1000..1000
# execute as @e[type=minecraft:item,tag=NatureCraft.drop,distance=0] store result entity @s Motion[2] double 0.0001 run random value -1000..1000
# execute as @e[type=minecraft:item,tag=NatureCraft.drop,distance=0] run say 1
# tag @e[type=minecraft:item,tag=NatureCraft.drop,distance=0] remove NatureCraft.drop