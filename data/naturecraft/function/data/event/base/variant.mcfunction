# 模型变换
# 参数 : 解析为 <命令存储> model.<路径>
# name : 命令存储的命名空间ID
# nbt : 一个nbt路径

# (状态 : 未完善) 还需添加旋转与平移变换的相关内容

# 属性变换
$data modify entity @s data merge from storage $(name) model.$(nbt).model
# 渲染变换
## 模型
data modify entity @n[type=minecraft:item_display,tag=NatureCraft.display,tag=NatureCraft.root,tag=NatureCraft.target] item.components."minecraft:item_model" set from entity @s data.display.model
## 旋转与平移

# 时钟与随机刻标签
execute if data entity @s data.event.random run tag @s add NatureCraft.randomtick
execute if data entity @s data.event.clock run tag @s add NatureCraft.clock