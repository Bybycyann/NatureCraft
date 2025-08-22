# 标签(携带该标签的模型会接受状态更新)
tag @s add NatureCraft.pizzle
# 状态更新
## 水平3*3
execute positioned ~-1 ~-0.001 ~-1 as @e[type=minecraft:marker,tag=NatureCraft.pizzle,dx=2,dy=0.001,dz=2] positioned as @s align xyz positioned ~ ~-0.001 ~ run function naturecraft:place/init/states/pizzle/1
## ↑
execute positioned ~ ~0.999 ~ as @e[type=minecraft:marker,tag=NatureCraft.pizzle,dx=0,dy=0.001,dz=0] positioned as @s align xyz positioned ~ ~-0.001 ~ run function naturecraft:place/init/states/pizzle/1
## ↓
execute positioned ~ ~-1.001 ~ as @e[type=minecraft:marker,tag=NatureCraft.pizzle,dx=0,dy=0.001,dz=0] positioned as @s align xyz positioned ~ ~-0.001 ~ run function naturecraft:place/init/states/pizzle/1