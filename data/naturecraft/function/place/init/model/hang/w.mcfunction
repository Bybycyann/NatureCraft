# [0,0,1]
# →
execute if score #facing NatureCraft.var matches 3 run \
        data modify entity @s transformation.left_rotation set value [0.0f,0.0f,-0.707f,0.707f]
# ←
execute if score #facing NatureCraft.var matches 2 run \
        data modify entity @s transformation.left_rotation set value [0.0f,0.0f,0.707f,0.707f]
# ↓
execute if score #facing NatureCraft.var matches 0 run \
        data modify entity @s transformation.left_rotation set value [0.0f,0.0f,1.0f,0.0f]

# [1,0,0]
# ·
execute if score #facing NatureCraft.var matches 4 run \
        data modify entity @s transformation.left_rotation set value [0.707f,0.0f,0.0f,0.707f]