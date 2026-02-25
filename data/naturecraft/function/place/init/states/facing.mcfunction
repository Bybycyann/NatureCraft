# 匹配一个状态映射数据
execute store result score #count NatureCraft.var run data get storage naturecraft:main data.states[0].facing
execute if score #facing NatureCraft.var = #count NatureCraft.var run return run \
        data modify storage naturecraft:main data merge from storage naturecraft:main data.states[0].model

# 循环判据
data remove storage naturecraft:main data.states[0]
execute store result score #count NatureCraft.var run data get storage naturecraft:main data.states
execute unless score #count NatureCraft.var matches ..0 run function naturecraft:place/init/states/facing