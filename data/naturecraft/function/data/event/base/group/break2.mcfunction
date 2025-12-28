# ```
# 按战利品表生成掉落物
# @param loot_table (string): 调用一个战利品表
# ```

# 调用战利品表
execute as @n[type=minecraft:interaction,tag=NatureCraft.interaction_box,tag=NatureCraft.target] on target if entity @s[gamemode=!creative] run function naturecraft:data/event/base/loot_spawn with storage naturecraft:main const

# 音效
function naturecraft:data/event/base/sound with storage naturecraft:main const

# 粒子

# 删除实体
function naturecraft:data/event/base/kill

# 发出状态更新
execute align xyz run function naturecraft:place/init/states/link/0