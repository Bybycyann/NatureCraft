# 获取随机刻设置
execute store result score #random_tick_speed NatureCraft.var run gamerule random_tick_speed

# loaded chunk 轮询
function naturecraft:random_tick/loaded_chunk/0
# not loaded chunk 轮询
execute if score #_reload_ NatureCraft.var matches 1 run schedule function naturecraft:random_tick/not_loaded_chunk/0 10s replace

# 冗余保护
kill @e[tag=temp,type=minecraft:marker]