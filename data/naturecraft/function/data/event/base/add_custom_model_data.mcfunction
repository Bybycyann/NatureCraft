# ```
# 为掉落物追加custom_model_data
# (注: 在这之前应压入一个栈元素用于存储物品数据)
# ```

data modify entity @s Item.components."minecraft:custom_model_data" set from storage naturecraft:main io.stack[-1].custom_model_data
data modify entity @s Item.components."minecraft:custom_data".custom_model_data set from storage naturecraft:main io.stack[-1].custom_model_data