# 走表
scoreboard players add @s NatureCraft.clock 1

# 时钟事件
execute if score @s NatureCraft.clock = @s NatureCraft.time run function naturecraft:clock/1