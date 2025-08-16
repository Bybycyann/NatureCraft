# NatureCraft

> Vanilla 端轻量级自定义交互模型支持库.

## 功能

- 三个平移自由度的碰撞箱与交互箱设置;
- 光照;
- 多模型混合;
- 简单的交互事件;
- 模拟随机刻(受randomTickSpeed控制);
- 周期事件;
- 可供配置的状态映射.

## 数据

### 模型数据

- **模型实体数据** `(entity)minecraft:marker`

  **标签 (Tag)** : `NatureCraft.data`

  **数据值 (Data)** :

​	<img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**data**
​	├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**model** : 模型属性。在生成后**继承**于预加载 marker。
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**name** : 命令存储命名空间ID。
​	│    └─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**nbt** : 一个[NBT路径](https://zh.minecraft.wiki/w/NBT路径?variant=zh-cn)。
​	├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**type** : 模型类型, 默认为`none`(默认), 其他可选值 : `hang`(悬挂)。
​	├─ <img src="https://zh.minecraft.wiki/images/Data_node_bool.svg?77754" alt='布尔型' title='布尔型' width='20' height='20'>**towards** : 默认为 `true`。模型是否有朝向性, 即根据玩家放置视角决定水平朝向(NSWE), 当模型为悬挂类型时, 启用该选项可能会出错。
​	├─ <img src="https://zh.minecraft.wiki/images/Data_node_list.svg?d6aa9" alt='NBT列表/JSON数组' title='NBT列表/JSON数组' width='20' height='20'>**states** : 仅在 <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**type** 为 `hang` 时启用, 与方块状态类似的, 用于定义不同情况下采用的模型映射规则。
​	│    └─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'> : 一个状态映射
​	│    =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**model** : 递归标签。包含模型, 光照, 碰撞箱与交互箱属性。
​	│    =    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_any.svg?d406c" alt='任意类型' title='任意类型' width='20' height='20'>**<*模型属性标签*>** : 一个模型属性。
​	│    =    └─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**facing** : (0≤值≤5) 匹配一个模型附着面。
​	├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'><img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'><img src="https://zh.minecraft.wiki/images/Data_node_list.svg?d6aa9" alt='NBT列表/JSON数组' title='NBT列表/JSON数组' width='20' height='20'>**litem_name** : ([文本组件](https://zh.minecraft.wiki/w/文本组件)) 模型名称。
​	├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**display** : 外观数据。
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**model** : 一个[物品模型映射](https://zh.minecraft.wiki/w/物品模型映射)。
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'> **common** : 物品展示实体渲染变换属性。
​	│    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_any.svg?d406c" alt='任意类型' title='任意类型' width='20' height='20'>**<*物品展示实体标签*>** (详见[展示实体 - 中文 Minecraft Wiki](https://zh.minecraft.wiki/w/展示实体))
​	│    └─ <img src="https://zh.minecraft.wiki/images/Data_node_list.svg?d6aa9" alt='NBT列表/JSON数组' title='NBT列表/JSON数组' width='20' height='20'>**submodels** : 子模型数据。
​	│    =    └─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'> : 一个子模型定义。
​	│    =    =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**model** : 一个[物品模型映射](https://zh.minecraft.wiki/w/物品模型映射)。
​	│    =    =    └─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'> **common** : 展示实体渲染变换属性。
​	├─ <img src="https://zh.minecraft.wiki/images/Data_node_int.svg?8d24f" alt='整形' title='整型' width='20' height='20'>**light_level** : (默认为14)光照等级。
​	├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**collision_box** : 碰撞箱属性。
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20'>**scale** : (默认为1)碰撞箱尺寸。
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20'>**offset_x** : (默认为0)碰撞箱底部中心相对方块底部中心在X轴上的偏移。
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20'>**offset_y** : (默认为0)碰撞箱底部中心相对方块底部中心在Y轴上的偏移。
​	│    └─ <img src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20'>**offset_z** : (默认为0)碰撞箱底部中心相对方块底部中心在Z轴上的偏移。
​	├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**interaction_box** : 交互箱属性。
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_float.svg?ae55e" alt='单精度浮点数' title='单精度浮点数' width='20' height='20'>**height** : (默认为1)交互箱的高度。
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_float.svg?ae55e" alt='单精度浮点数' title='单精度浮点数' width='20' height='20'>**width** : (默认为1)交互箱的宽度。
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20'>**offset_x** : (默认为0)交互箱底部中心相对方块底部中心在X轴上的偏移。
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20'>**offset_y** : (默认为0)交互箱底部中心相对方块底部中心在Y轴上的偏移。
​	│    └─ <img src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20'>**offset_z** : (默认为0)交互箱底部中心相对方块底部中心在Z轴上的偏移。
​	│    └─ <img src="https://zh.minecraft.wiki/images/Data_node_bool.svg?77754" alt='布尔型' title='布尔型' width='20' height='20'>**response** : (默认为`false`)玩家交互时是否挥动手臂。
​	└─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**event** : 交互事件。
​	=    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**place** : 放置事件。
​	=    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**random** : 随机刻事件。
​	=    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**clock** : 时钟事件(周期事件)。
​	=    │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_any.svg?d406c" alt='任意类型' title='任意类型' width='20' height='20'>**<*事件通用参数*>** : 一个事件通用参数(`name` & `path`)。
​	=    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_int.svg?8d24f" alt='整形' title='整型' width='20' height='20'>**time** : 时钟周期, 以 `tick `为单位。
​	=    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**left_click** : 左键事件。
​	=    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**right_click** : 右键事件。解析为 `<name>:data/event/<path>`。
​	=    │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**name** : 命名空间。
​	=    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**path** : 一个事件函数路径。
​	=    └─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**const** : 事件调用时传递的常参量。
​	=    =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**place** : 放置事件传递的参数组。
​	=    =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**left_click** : 左键事件传递的参数组。
​	=    =    └─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**right_click** : 右键事件传递的参数组。
​	=    =    =    └─ <img src="https://zh.minecraft.wiki/images/Data_node_any.svg?d406c" alt='任意类型' title='任意类型' width='20' height='20'>**<*参数对象ID*>** : 一个参数对象。

需要注意的是, hang 生成原点并不是紧贴墙面的, 而是离墙面有 `0.03125` 的距离.

### 存储数据

#### Scoreboard

计分板依赖。

**`NatureCraft.var`** : 传参、运算用计分板。

**`NatureCraft.uid`** : 一个递增序列uid计分板, 每组模型都会分配一个独立的值用于绑定交互

#### Storage

使用storage存储模型数据以便玩家在游戏内动态构建自定义模型。

- **模型数据**

  <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'> **<*模型ID*>**
  ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**template** : 模型调用的模板属性。解析为`<命令存储> template.<路径>`
  │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**name** : 命令存储命名空间ID。
  │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**nbt** : 一个[NBT路径](https://zh.minecraft.wiki/w/NBT路径?variant=zh-cn)。
  └─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**model** : 模型属性。
  =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**type** : 模型类型, 默认为`none`(默认), 其他可选值 : `hang`(悬挂)。
  =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_bool.svg?77754" alt='布尔型' title='布尔型' width='20' height='20'>**towards** : 默认为 `true`。模型是否有朝向性, 即根据玩家放置视角决定水平朝向(NSWE), 当模型为悬挂类型时, 启用该选项可能会出错。
  =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_list.svg?d6aa9" alt='NBT列表/JSON数组' title='NBT列表/JSON数组' width='20' height='20'>**states** : 仅在 <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**type** 为 `hang` 时启用, 与方块状态类似的, 用于定义不同情况下采用的模型映射规则。
  =    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'> : 一个状态映射
  =    │    =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_any.svg?d406c" alt='任意类型' title='任意类型' width='20' height='20'>**<*模型属性标签*>** : 递归标签, 与 <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**model** 键内容一致。
  =    │    =    └─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**facing** : (0≤值≤5) 匹配一个模型附着面。
  =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'><img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'><img src="https://zh.minecraft.wiki/images/Data_node_list.svg?d6aa9" alt='NBT列表/JSON数组' title='NBT列表/JSON数组' width='20' height='20'>**litem_name** : ([文本组件](https://zh.minecraft.wiki/w/文本组件)) 模型名称。
  =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**display** : 外观数据。
  =    │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**model** : 一个[物品模型映射](https://zh.minecraft.wiki/w/物品模型映射)。
  =    │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'> **common** : 展示实体渲染变换属性。
  =    │    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_any.svg?d406c" alt='任意类型' title='任意类型' width='20' height='20'>**<*物品展示实体标签*>** (详见[展示实体 - 中文 Minecraft Wiki](https://zh.minecraft.wiki/w/展示实体)
  =    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_list.svg?d6aa9" alt='NBT列表/JSON数组' title='NBT列表/JSON数组' width='20' height='20'>**submodels** : 子模型数据。
  =    │    =    └─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'> : 一个子模型定义。
  =    │    =    =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**model** : 一个[物品模型映射](https://zh.minecraft.wiki/w/物品模型映射)。
  =    │    =    =    └─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'> **common** : 展示实体渲染变换属性。
  =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_int.svg?8d24f" alt='整形' title='整型' width='20' height='20'>**light_level** : (默认为14)光照等级。
  =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**collision_box** : 碰撞箱属性。
  =    │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20'>**scale** : (默认为1)碰撞箱尺寸。
  =    │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20'>**offset_x** : (默认为0)碰撞箱底部中心相对方块底部中心在X轴上的偏移。
  =    │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20'>**offset_y** : (默认为0)碰撞箱底部中心相对方块底部中心在Y轴上的偏移。
  =    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20'>**offset_z** : (默认为0)碰撞箱底部中心相对方块底部中心在Z轴上的偏移。
  =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**interaction_box** : 交互箱属性。
  =    │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_float.svg?ae55e" alt='单精度浮点数' title='单精度浮点数' width='20' height='20'>**height** : (默认为1)交互箱的高度。
  =    │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_float.svg?ae55e" alt='单精度浮点数' title='单精度浮点数' width='20' height='20'>**width** : (默认为1)交互箱的宽度。
  =    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_bool.svg?77754" alt='布尔型' title='布尔型' width='20' height='20'>**response** : (默认为`false`)玩家交互时是否挥动手臂。
  =    └─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**event** : 交互事件。
  =    =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**place** : 放置事件。
  =    =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**random** : 随机刻事件。
  =    =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**clock** : 时钟事件(周期事件)。
  =    =    │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_any.svg?d406c" alt='任意类型' title='任意类型' width='20' height='20'>**<*事件通用参数*>** : 一个事件通用参数(`name` & `path`)。
  =    =    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_int.svg?8d24f" alt='整形' title='整型' width='20' height='20'>**time** : 时钟周期, 以 `tick `为单位。
  =    =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**left_click** : 左键事件。
  =    =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**right_click** : 右键事件。解析为 `<name>:data/event/<path>`。
  =    =    │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**name** : 命名空间。
  =    =    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**path** : 一个事件**函数路径**。
  =    =    └─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**const** : 事件调用时传递的常参量。
  =    =    =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**place** : 放置事件传递的参数组。
  =    =    =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**left_click** : 左键事件传递的参数组。
  =    =    =    └─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**right_click** : 右键事件传递的参数组。
  =    =    =    =    └─ <img src="https://zh.minecraft.wiki/images/Data_node_any.svg?d406c" alt='任意类型' title='任意类型' width='20' height='20'>**<*参数对象ID*>** : 一个参数对象。
  
- **模板数据**

  <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'> **<*模板ID*>**

  └─ <img src="https://zh.minecraft.wiki/images/Data_node_any.svg?d406c" alt='任意类型' title='任意类型' width='20' height='20'>**<*模型属性标签*>** : 与模型数据下 <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**model** 键内容一致。

### 生成

模型生成采用刷怪蛋(cow_spawn_egg)形式, 数据格式如下

​	<img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**data**
​	└─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**model** : 模型属性。解析为`<命名空间> model.<路径>`
​	=    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**name** : 命令存储命名空间ID。
​	=    └─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**nbt** : 一个[NBT路径](https://zh.minecraft.wiki/w/NBT路径?variant=zh-cn)。

数据包内置 `give` 函数, 可通过 `function naturecraft:give` 调用, 其语法为 :

```mcfunction
function naturecraft:give {name:"<存储模型数据的命名空间ID>","nbt":"<模型存储的nbt路径>",model:"<一个物品模型映射>",count:<数量>}
```

如 : 

## 模型

根据模型的功能, 为其分配不同的实体作为构成元素, 使用自增id作为绑定依据(NatureCraft.uid)

碰撞箱shulker骑乘于一个大小为0的交互实体

需要注意的是, 模型的交互箱与碰撞箱仅支持平移变换, 不支持旋转变换。光照只接受值变换。

### 特殊功能

- **混合模型**

  > 由于Blockbench不支持双轴旋转, 在模型表现上有所欠缺, 为了解决这个问题, 本包采用了混合模型的方法。通过将原模型拆分成子模块, 借助展示实体渲染变换, 使其整体拼装为一个整体

  

## 事件

在编写事件中, 我们需要掌握以下内容 :

### 目标

在一个模型事件执行过程中可供调用的实体

|          Entity          |                             Tags                             |
| :----------------------: | :----------------------------------------------------------: |
|      Marker**(@s)**      |           `NatureCraft.data`, `NatureCraft.target`           |
|  Interaction**(main)**   |     `NatureCraft.interaction_box`, `NatrueCraft.target`      |
|         Shulker          |      `NatureCraft.collision_box`, `NatureCraft.target`       |
| Inreraction**(Shulker)** |      `NatureCraft.collision_box`, `NatureCraft.target`       |
|  Item_display**(root)**  | `NatureCraft.display`, `NatureCraft.root`, `NatureCraft.target` |
|  Item_display**(sub)**   |         `NatureCraft.display`, `NatureCraft.target`          |
|  Player**(on target)**   |                              -                               |

- 拥有时钟事件和随机刻事件的模型 Marker 实体会携带 `NatureCraft.clock` 和 `NatureCraft.randomtick` 标签;

- Marker 实体是事件函数调用时传递的执行实体**(@s)**;

- Item_display**(sub)** 实体是混合模型调用的补充实体, 骑乘于 Item_display**(root)**, 需要注意的是 <img src="https://zh.minecraft.wiki/images/Data_node_list.svg?d6aa9" alt='NBT列表/JSON数组' title='NBT列表/JSON数组' width='20' height='20'>**left_rotation** 已被占用, 若需在事件中调用, 请使用 <img src="https://zh.minecraft.wiki/images/Data_node_list.svg?d6aa9" alt='NBT列表/JSON数组' title='NBT列表/JSON数组' width='20' height='20'>**right_rotation** 属性进行旋转变换;

- `NatureCraft.target` 为事件标签, 在事件结束后自动清除;

- Player 在玩家与 Interaction**(main)** 交互时传递, 数据包会自动将 attack 目标传递到 interaction, 统一使用

  ```mcfunction
  execute as @n[type=minecraft:interaction,tag=NatureCraft.interaction_box,NatureCraft.target] on target ...
  ```

  调用。

### 位置

事件位置默认在 Marker 实体位置。

### 参数

在部分事件中, 如战利品生成(loot_table), 粒子属性(particle)等需要传入一些静态参量, 在一次事件中数据包会将从Marker中取得的参数传递到**命令存储**`naturecraft:main` 的 `const` 键中, 直接调用的函数会用默认传入宏, 后续跨文件调用可使用 `with storage naturecraft:main const` 传入。

### 更多

- **物品存储空间**

  展示实体提供一个物品数据, 可结合 `minecraft:container` 组件来模拟一个 255 容量上限的物品空间。统一起见建议使用根展示实体 `NatureCraft.root`。
  
- **简单参数创建于传递**

  数据包声明了一个计分板**`NatureCraft.var`**用于处理传参与运算, 结合虚拟实体`#CustomName`进行简单的数据处理操作。

## 任务清单

- ~~附着类模型放置逻辑~~;
- ~~模型状态映射~~;
- 周期事件与随机事件;
- 游戏内模型注册;
- GUI模型管理;
- 更多内置事件.