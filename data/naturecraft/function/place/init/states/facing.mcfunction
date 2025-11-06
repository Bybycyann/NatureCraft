# 匹配一个状态映射数据
execute store result score #Temp NatureCraft.var run data get storage naturecraft:main data.states[0].facing
execute if score #facing NatureCraft.var = #Temp NatureCraft.var run \
        data modify storage naturecraft:main data merge from storage naturecraft:main data.states[0].model

# 循环判据
data remove storage naturecraft:main data.states[0]
execute store result score #Temp NatureCraft.var run data get storage naturecraft:main data.states
execute unless score #Temp NatureCraft.var matches ..0 run function naturecraft:place/init/states/facing