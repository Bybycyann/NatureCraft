# ```
# 数据包: NatureCraft-beta1.1
# 适用版本: 1.21.5+
# 类型: 支持库[lib]
# 仓库(Github): https://github.com/Bybycyann/NatureCraft
# 作者: 七柏(桂茗)
# 许可证: MIT License
# Bilibili: https://space.bilibili.com/405830542?spm_id_from=333.1007.0.0
# ```

# 数据注册
function #naturecraft:reg

# 计分板依赖
## 参数与运算
scoreboard objectives add NatureCraft.var dummy

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

# Storage依赖
## 常参传递
data modify storage naturecraft:main const set value {}