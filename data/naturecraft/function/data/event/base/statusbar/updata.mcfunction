# 重置时钟
execute store result score @s NatureCraft.clock run data get storage naturecraft:main temp.display.duration
# 刷新statusbar
$data modify entity @s text set value {"text":"\ue$(type)$(step)","font":"naturecraft:gui/statusbar/statusbar","color":"$(color)","shadow_color":[0,0,0,0]}