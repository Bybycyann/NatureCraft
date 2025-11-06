$summon minecraft:text_display ~ ~ ~ {Tags:["NatureCraft.event.statusbar","NatureCraft.init"],\
    text:{"text":"\ue$(type)$(step)","font":"naturecraft:gui/statusbar/statusbar","color":"$(color)","shadow_color":[0,0,0,0]},\
    transformation:{translation:[0,$(height),0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1,1,1]},\
    background:0,billboard:"vertical",brightness:{sky:15,block:15}}
execute as @n[type=minecraft:text_display,tag=NatureCraft.event.statusbar,tag=NatureCraft.init] store result score @s NatureCraft.clock run data get storage naturecraft:main temp.display.duration
ride @n[type=minecraft:text_display,tag=NatureCraft.event.statusbar,tag=NatureCraft.init] mount @s
tag @n[type=minecraft:text_display,tag=NatureCraft.event.statusbar,tag=NatureCraft.init] remove NatureCraft.init