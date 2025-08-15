# load
scoreboard objectives add Var dummy


# 执行对象与执行位置 player

execute anchored eyes positioned ^ ^ ^ summon marker run tag @s add voxel

# 比例参数 *1e2
execute store result score #X Var run data get entity @n[type=marker,tag=voxel] Pos[0] 100
execute store result score #Y Var run data get entity @n[type=marker,tag=voxel] Pos[1] 10000
execute store result score #Z Var run data get entity @n[type=marker,tag=voxel] Pos[2] 10000
tp @n[type=marker,tag=voxel] ^ ^ ^1
execute store result score #dX Var run data get entity @n[type=marker,tag=voxel] Pos[0] 1000
execute store result score #dY Var run data get entity @n[type=marker,tag=voxel] Pos[1] 100000
execute store result score #dZ Var run data get entity @n[type=marker,tag=voxel] Pos[2] 100000
scoreboard players operation #dX Var -= #X Var
scoreboard players operation #dY Var -= #Y Var
scoreboard players operation #dZ Var -= #Z Var

scoreboard players operation #dY Var /= #dX Var
scoreboard players operation #dZ Var /= #dX Var
execute if score #dX Var matches ..0 run scoreboard players set #dX Var -100
execute if score #dX Var matches 1.. run scoreboard players set #dX Var 100
tp @n[type=marker,tag=voxel] ~ ~ ~
scoreboard players set #Temp Var 100
scoreboard players operation #Y Var /= #Temp Var
scoreboard players operation #Z Var /= #Temp Var

# 一个循环
execute if score #dX Var matches ..0 run function naturecraft:place/1
    # 1.mcf
    scoreboard players set #Temp Var 100
    scoreboard players operation #Temp Var *= #dX Var
    scoreboard players operation #X Var += #Temp Var
    scoreboard players operation #Y Var += #dY Var
    scoreboard players operation #Z Var += #dZ Var
    execute store result entity @n[type=marker,tag=voxel] Pos[0] double 0.01 run scoreboard players get #X Var