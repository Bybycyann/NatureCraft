# 目标占用逻辑
# execute if function naturecraft:place/occupy/0 run return 0

# 类型分流
## 默认
execute as @s[type=minecraft:marker] align y run function naturecraft:place/none
## 悬挂
execute as @s[type=minecraft:item_frame] run function naturecraft:place/hang

# 自然生成标签 - remove
tag @s remove NatureCraft.natural