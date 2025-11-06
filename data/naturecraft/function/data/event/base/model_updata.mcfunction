# ```
# 将模型按存储数据进行更新
# (一般为内部函数调用)
# ```

# 根模型
data modify entity @n[type=minecraft:item_display,tag=NatureCraft.display,tag=NatureCraft.root,tag=NatureCraft.target] {} merge from entity @s data.display.common
data modify entity @n[type=minecraft:item_display,tag=NatureCraft.display,tag=NatureCraft.root,tag=NatureCraft.target] item.components."minecraft:item_model" set from entity @s data.display.model
# 子模型