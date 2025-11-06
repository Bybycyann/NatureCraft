# ```
# 根据输入值值显示一个状态条
#
# 事件标签:
#  - NatureCraft.event.statusbar -> text_display
# 参数:
# (object)statusbar_data: 根标签
# ├─(object)value: 待检查的值
# │ ├─(string)type: (score|storage) 数值提供器类型
# │ │ 若type为score:
# │ ├─(string)score: 要检查的计分项
# │ ├─(string)name: 目标选择器
# │ │ 若type为storage:
# │ ├─(string)storage: 要检查的命令存储
# │ └─(string)path: NBT路径, 表示一个NBT标签
# ├─(float)max: 值上限
# └─(object)display: 状态条渲染属性
#   ├─(byte)type: 使用的状态条类型id(1-10分段|...)
#   ├─(string)color: 状态条着色, 采用16进制RGB, 也可采用颜色代码
#   ├─(byte)duration: 状态条的存在时间(以tick为单位设为-1则不消失)
#   └─(float)height: 状态条的渲染高度
# 
# 是否可在非事件中调用: FALSE
# 问题: 33 行使用了execute on vehicle来更改执行对象到 NatureCraft.root, 外部直接调用会导致追踪到空实体
# 原调用例:
# execute as @n[type=slime] at @s run function naturecraft:data/event/base/statusbar/0 {statusbar_data:{value:{type:"score",score:"NatureCraft.var",name:"@p"},max:100,display:{type:1,duration:100,height:1}}}
# ```

# 数据转移
$data modify storage naturecraft:main temp set value $(statusbar_data)
# value
execute if data storage naturecraft:main temp.value{type:"score"} run function naturecraft:data/event/base/statusbar/score with storage naturecraft:main temp.value
execute if data storage naturecraft:main temp.value{type:"storage"} run function naturecraft:data/event/base/statusbar/storage with storage naturecraft:main temp.value
# 分段
execute store result score #temp NatureCraft.var run data get storage naturecraft:main temp.max 100
scoreboard players operation #step NatureCraft.var /= #temp NatureCraft.var
function naturecraft:data/event/base/statusbar/step

## default
execute unless data storage naturecraft:main temp.display.type run data modify storage naturecraft:main temp.display.type set value 1
execute unless data storage naturecraft:main temp.display.color run data modify storage naturecraft:main temp.display.color set value "white"
execute unless data storage naturecraft:main temp.display.duration run data modify storage naturecraft:main temp.display.duration set value 20
execute unless data storage naturecraft:main temp.display.height run data modify storage naturecraft:main temp.display.height set value 0

# 显示
execute on vehicle on passengers if entity @s[type=minecraft:text_display,tag=NatureCraft.event.statusbar] run return run function naturecraft:data/event/base/statusbar/updata with storage naturecraft:main temp.display
execute on vehicle run function naturecraft:data/event/base/statusbar/add with storage naturecraft:main temp.display