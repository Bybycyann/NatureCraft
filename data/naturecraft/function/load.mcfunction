# ```
# 数据包: NatureCraft-beta1.1
# 适用版本: 1.21.5+
# 类型: 支持库[lib]
# 仓库(Github): https://github.com/Bybycyann/NatureCraft
# 作者: 七柏(桂茗)
# 许可证: MIT License
# Bilibili: https://space.bilibili.com/405830542
# ```

# 游戏规则
function naturecraft:gamerule

# 数据注册
function #naturecraft:reg

# 计分板依赖
## 变量
scoreboard objectives add NatureCraft.var dummy
## 常量
scoreboard objectives add NatureCraft.const dummy
    scoreboard players set #1e1 NatureCraft.const 10
    scoreboard players set #1e2 NatureCraft.const 100
    scoreboard players set #1e3 NatureCraft.const 1000
## 序列uid
scoreboard objectives add NatureCraft.uid dummy

## 计时
scoreboard objectives add NatureCraft.time dummy
## 时钟
scoreboard objectives add NatureCraft.clock dummy

# status计分
scoreboard objectives add NatureCraft.status dummy

# # 监听玩家进入游戏
# scoreboard objectives add leave_game minecraft.custom:minecraft.leave_game

# reload标签
scoreboard players set #_reload_ NatureCraft.var 1
schedule function naturecraft:reload_tag 1t replace

# Storage依赖
## 常参传递
data modify storage naturecraft:main const set value {}