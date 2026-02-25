# ```
# 基于谓词的状态映射
# ```

# 谓词判定
execute store result score #boole NatureCraft.var run function naturecraft:place/init/states/predicate/1 with storage naturecraft:main data.states[0]
execute if score #boole NatureCraft.var matches 1 run return run data modify storage naturecraft:main data merge from storage naturecraft:main data.states[0].model

# 循环判据
data remove storage naturecraft:main data.states[0]
execute store result score #count NatureCraft.var run data get storage naturecraft:main data.states
execute unless score #count NatureCraft.var matches ..0 run function naturecraft:place/init/states/predicate/0