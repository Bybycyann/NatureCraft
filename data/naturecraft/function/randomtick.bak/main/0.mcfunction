# execute as @e[tag=NatureCraft.randomtick,type=minecraft:marker,dx=15,dy=15.001,dz=15,sort=random,limit=3] positioned as @s run function naturecraft:random_tick/main/roll

function naturecraft:random_tick/main/tp/0
execute positioned as @s as @e[tag=NatureCraft.randomtick,type=minecraft:marker,dx=0,dy=0.001,dz=0,limit=1] positioned as @s run function naturecraft:random_tick/main/roll
tp @s ~ ~0.001 ~