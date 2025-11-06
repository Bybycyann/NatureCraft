# ```
# 采用状态条多次攻击的方式破坏
#
# 参数:
# (any): 子级破坏事件所调用的参数
# (object)statusbar_data: statusbar依赖参数
# (sting)break3_status_score: 记录状态的计分板
# (byte)break3_damage: 状态值衰减量
# (byte)break3_type: (1|2)调用的子破坏类型
#
# 返回值:
# 0: 未破坏
# 1: 破坏
# ```

# 状态参数更新
$execute on vehicle run scoreboard players remove @s $(break3_status_score) $(break3_damage)
# statusbar显示
function naturecraft:data/event/base/statusbar/0 with storage naturecraft:main const
# 子级break事件调用
execute on vehicle unless score @s NatureCraft.status matches ..0 run return 0
$function naturecraft:data/event/base/group/break$(break3_type) with storage naturecraft:main const
# 破坏返回值
return 1