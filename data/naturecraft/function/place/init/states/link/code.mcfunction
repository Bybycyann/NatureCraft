# # ↑
# $execute positioned ~ ~1 ~ if entity @e[type=minecraft:marker,tag=$(tag),dx=0,dy=0.001,dz=0] run \
#     data modify storage naturecraft:main states.code[0] set value 1
# # NE
# $execute positioned ~1 ~ ~-1 if entity @e[type=minecraft:marker,tag=$(tag),dx=0,dy=0.001,dz=0] run \
#     data modify storage naturecraft:main states.code[1] set value 1
# # N
# $execute positioned ~ ~ ~-1 if entity @e[type=minecraft:marker,tag=$(tag),dx=0,dy=0.001,dz=0] run \
#     data modify storage naturecraft:main states.code[2] set value 1
# # NW
# $execute positioned ~-1 ~ ~-1 if entity @e[type=minecraft:marker,tag=$(tag),dx=0,dy=0.001,dz=0] run \
#     data modify storage naturecraft:main states.code[3] set value 1
# # W
# $execute positioned ~-1 ~ ~ if entity @e[type=minecraft:marker,tag=$(tag),dx=0,dy=0.001,dz=0] run \
#     data modify storage naturecraft:main states.code[4] set value 1
# # SW
# $execute positioned ~-1 ~ ~1 if entity @e[type=minecraft:marker,tag=$(tag),dx=0,dy=0.001,dz=0] run \
#     data modify storage naturecraft:main states.code[5] set value 1
# # S
# $execute positioned ~ ~ ~1 if entity @e[type=minecraft:marker,tag=$(tag),dx=0,dy=0.001,dz=0] run \
#     data modify storage naturecraft:main states.code[6] set value 1
# # SE
# $execute positioned ~1 ~ ~1 if entity @e[type=minecraft:marker,tag=$(tag),dx=0,dy=0.001,dz=0] run \
#     data modify storage naturecraft:main states.code[7] set value 1
# # E
# $execute positioned ~1 ~ ~ if entity @e[type=minecraft:marker,tag=$(tag),dx=0,dy=0.001,dz=0] run \
#     data modify storage naturecraft:main states.code[8] set value 1
# # ↓
# $execute positioned ~ ~-1 ~ if entity @e[type=minecraft:marker,tag=$(tag),dx=0,dy=0.001,dz=0] run \
#     data modify storage naturecraft:main states.code[9] set value 1

# ↑
$execute positioned ~ ~1 ~ if entity @e[type=minecraft:marker,tag=$(tag),dx=0,dy=0.001,dz=0] run \
    data modify storage naturecraft:main states.code[0] set value 1
# NE
$execute positioned ~1 ~ ~-1 if entity @e[type=minecraft:marker,tag=$(tag),dx=0,dy=0.001,dz=0] run \
    data modify storage naturecraft:main states.code[3] set value 1
# N
$execute positioned ~ ~ ~-1 if entity @e[type=minecraft:marker,tag=$(tag),dx=0,dy=0.001,dz=0] run \
    data modify storage naturecraft:main states.code[2] set value 1
# NW
$execute positioned ~-1 ~ ~-1 if entity @e[type=minecraft:marker,tag=$(tag),dx=0,dy=0.001,dz=0] run \
    data modify storage naturecraft:main states.code[1] set value 1
# W
$execute positioned ~-1 ~ ~ if entity @e[type=minecraft:marker,tag=$(tag),dx=0,dy=0.001,dz=0] run \
    data modify storage naturecraft:main states.code[4] set value 1
# SW
$execute positioned ~-1 ~ ~1 if entity @e[type=minecraft:marker,tag=$(tag),dx=0,dy=0.001,dz=0] run \
    data modify storage naturecraft:main states.code[6] set value 1
# S
$execute positioned ~ ~ ~1 if entity @e[type=minecraft:marker,tag=$(tag),dx=0,dy=0.001,dz=0] run \
    data modify storage naturecraft:main states.code[7] set value 1
# SE
$execute positioned ~1 ~ ~1 if entity @e[type=minecraft:marker,tag=$(tag),dx=0,dy=0.001,dz=0] run \
    data modify storage naturecraft:main states.code[8] set value 1
# E
$execute positioned ~1 ~ ~ if entity @e[type=minecraft:marker,tag=$(tag),dx=0,dy=0.001,dz=0] run \
    data modify storage naturecraft:main states.code[5] set value 1
# ↓
$execute positioned ~ ~-1 ~ if entity @e[type=minecraft:marker,tag=$(tag),dx=0,dy=0.001,dz=0] run \
    data modify storage naturecraft:main states.code[9] set value 1