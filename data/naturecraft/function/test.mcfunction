# function naturecraft:data/template/main/base
# function naturecraft:data/template/main/hang

# function naturecraft:data/model/0/amethyst
# function naturecraft:data/model/0/pots/acacia_pot
# function naturecraft:data/model/0/pots/birch_pot
# function naturecraft:data/model/0/pots/cherry_pot
# function naturecraft:data/model/0/pots/dark_oak_pot
# function naturecraft:data/model/0/pots/jungle_pot
# function naturecraft:data/model/0/pots/oak_pot
# function naturecraft:data/model/0/pots/pale_oak_pot
# function naturecraft:data/model/0/pots/spruce_pot
# function naturecraft:data/model/0/pots/warped_pot
# function naturecraft:data/model/0/tables/stripped_oak_table
summon minecraft:text_display ~ ~1 ~ {text:\
[\
    {"text":"测试\n","font":"default"},\
    {"text":"\ue105","font":"naturecraft:mian/gui/statusbar/statusbar","shadow_color":[0,0,0,0]},\
],\
background:0,line_width:1000,billboard:"vertical",transformation:{translation:[0,1,0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1,1,1]}}

# title @a actionbar \
# [\
#     {"translate":"space.-41","font":"default"},\
#     {"text":"\ue100","font":"naturecraft:mian/gui/statusbar/statusbar","shadow_color":[0,0,0,0]},\
#     {"translate":"space.-41","font":"default"},\
#     {"translate":"space.-41","font":"default"},\
#     {"text":"\ue100","font":"naturecraft:mian/gui/statusbar/statusbar","shadow_color":[0,0,0,0]},\
#     {"translate":"space.-41","font":"default"},\
# ]

# title @a actionbar [{"translate":"space.0","font":"default"},{"text":"\ue000","font":"custom_hud:example","shadow_color":[0,0,0,0]}]