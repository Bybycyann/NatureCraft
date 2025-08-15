# 按战利品表生成物品
# 参数 :
# loot_table : 一个战利品表。

# 生成掉落物
$execute Was @e[type=minecraft:interaction,tag=NatureCraft.interaction_box,tag=NatureCraft.target] on target run \
        loot spawn ~ ~ ~ loot $(loot_table)

# 音效

# 粒子

# 删除实体
function naturecraft:data/event/base/kill