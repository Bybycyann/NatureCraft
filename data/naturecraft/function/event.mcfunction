# 执行对象 : NatureCraft.data

# const传递
execute if score #event_type NatureCraft.var matches 0 run data modify storage naturecraft:main const set from entity @s data.event.const.place
execute if score #event_type NatureCraft.var matches 1 run data modify storage naturecraft:main const set from entity @s data.event.const.left_click
execute if score #event_type NatureCraft.var matches 2 run data modify storage naturecraft:main const set from entity @s data.event.const.right_click

$function $(name):data/event/$(path) with storage naturecraft:main const