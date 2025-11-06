# 标签(携带该标签的模型会接受状态更新)
tag @s add NatureCraft.link
# 状态更新
## 水平3*3
execute positioned ~-1 ~-0.001 ~-1 as @e[type=minecraft:marker,tag=NatureCraft.link,dx=2,dy=0.001,dz=2] positioned as @s align xyz positioned ~ ~-0.001 ~ run function naturecraft:place/init/states/link/1 with entity @s data.model
## ↑
execute positioned ~ ~0.999 ~ as @e[type=minecraft:marker,tag=NatureCraft.link,dx=0,dy=0.001,dz=0] positioned as @s align xyz positioned ~ ~-0.001 ~ run function naturecraft:place/init/states/link/1 with entity @s data.model
## ↓
execute positioned ~ ~-1.001 ~ as @e[type=minecraft:marker,tag=NatureCraft.link,dx=0,dy=0.001,dz=0] positioned as @s align xyz positioned ~ ~-0.001 ~ run function naturecraft:place/init/states/link/1 with entity @s data.model