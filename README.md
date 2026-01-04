# NatureCraft

> Vanilla 端轻量级自定义交互模型支持库.

## 功能

- 三个平移自由度的碰撞箱与交互箱设置;
- 光照;
- 多模型混合;
- 简单的交互事件;
- 模拟随机刻(受randomTickSpeed控制);
- 周期事件;
- 复合结构支持;
- 可以坐的椅子;
- 可供配置的状态映射(提供了三种映射方式, 分别为**朝向**, **范围内模型关系检查**, **谓词**).

## 数据

### 历史

(这里空空如也...)

### 模型数据

- **模型实体数据** `(entity)minecraft:marker`

  **标签 (Tag)** : `NatureCraft.data`

  **数据值 (Data)** :

​	<img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**data**
​	├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**model** : 模型索引。在生成后**继承**于预加载 marker。变体独立存储的模型在注册时需要填入该字段。
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**name** : 命令存储命名空间ID。
​	│    └─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**nbt** : 一个[NBT路径](https://zh.minecraft.wiki/w/NBT路径?variant=zh-cn)。
​	├─ <img src="https://zh.minecraft.wiki/images/Data_node_list.svg?d6aa9" alt='NBT列表/JSON数组' title='NBT列表/JSON数组' width='20' height='20'>**Tags** : 添加给 Marker 实体的额外标签。(仅生成模型时读取)
​	├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**type** : 模型类型, 默认为`none`(默认), 其他可选值 : `hang`(悬挂), `link`(连接), `predicate`(谓词)。
​	├─ <img src="https://zh.minecraft.wiki/images/Data_node_list.svg?d6aa9" alt='NBT列表/JSON数组' title='NBT列表/JSON数组' width='20' height='20'>**states** : 与方块状态类似的, 用于定义不同情况下采用的模型映射规则。
​	│    │ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**type** 为 `hang` 时:
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'> : 一个状态映射。
​	│    │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**model** : 递归标签。包含模型, 光照, 碰撞箱与交互箱属性。
​	│    │    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_any.svg?d406c" alt='任意类型' title='任意类型' width='20' height='20'>**<*模型属性标签*>** : 一个模型属性。
​	│    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**facing** : (0≤值≤5) 匹配一个模型附着面。
​	│    │ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**type** 为 `link` 时: (Marker 会被添加一个 `NatureCraft.link` 的标签, 用于接受状态更新)
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'> : 一个状态映射。
​	│    │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**model** : 递归标签。包含模型, 光照, 碰撞箱与交互箱属性。
​	│    │    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_any.svg?d406c" alt='任意类型' title='任意类型' width='20' height='20'>**<*模型属性标签*>** : 一个模型属性。
​	│    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**condition** : 一个条件。
​	│    │    =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_list.svg?d6aa9" alt='NBT列表/JSON数组' title='NBT列表/JSON数组' width='20' height='20'>**code** : 一个10位布尔型数组, 用来描述临近10个位置满足的条件状态。
​	│    │    =    └─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**tag** : 要检查的位置上的模型标签。
​	│    │ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**type** 为 `predicate` 时:
​	│    └─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'> : 一个状态映射。
​	│    =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**model** : 递归标签。包含模型, 光照, 碰撞箱与交互箱属性。
​	│    =    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_any.svg?d406c" alt='任意类型' title='任意类型' width='20' height='20'>**<*模型属性标签*>** : 一个模型属性。
​	│    =    └─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**predicate** : 一个谓词(支持内联定义)。
​	├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'><img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'><img src="https://zh.minecraft.wiki/images/Data_node_list.svg?d6aa9" alt='NBT列表/JSON数组' title='NBT列表/JSON数组' width='20' height='20'>**litem_name** : ([文本组件](https://zh.minecraft.wiki/w/文本组件)) 模型名称。
​	├─ <img src="https://zh.minecraft.wiki/images/Data_node_bool.svg?77754" alt='布尔型' title='布尔型' width='20' height='20'>**towards** : 默认为 `true`。模型是否有朝向性, 即根据玩家放置视角决定水平朝向(NSWE), 在非默认类型下启用该选项可能会出错。
​	├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**display** : 外观数据。
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**item_model** : 一个[物品模型映射](https://zh.minecraft.wiki/w/物品模型映射), 决定物品使用的模型。若不存在则与 <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>$\color{red}^*$**model** 保持一致。
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>$\color{red}^*$**model** : 一个[物品模型映射](https://zh.minecraft.wiki/w/物品模型映射)。
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'> **common** : 物品展示实体渲染变换属性。
​	│    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_any.svg?d406c" alt='任意类型' title='任意类型' width='20' height='20'>**<*物品展示实体标签*>** (详见[展示实体 - 中文 Minecraft Wiki](https://zh.minecraft.wiki/w/展示实体))
​	│    └─ <img src="https://zh.minecraft.wiki/images/Data_node_list.svg?d6aa9" alt='NBT列表/JSON数组' title='NBT列表/JSON数组' width='20' height='20'>**submodels** : 子模型数据。
​	│    =    └─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'> : 一个子模型定义。
​	│    =    =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**model** : 一个[物品模型映射](https://zh.minecraft.wiki/w/物品模型映射)。
​	│    =    =    └─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'> **common** : 展示实体渲染变换属性。
​	├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**ride** : 骑乘属性。
​	│    └─ <img src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20'>$\color{red}^*$**height** : 骑乘高度。
​	├─ <img src="https://zh.minecraft.wiki/images/Data_node_int.svg?8d24f" alt='整形' title='整型' width='20' height='20'>**light_level** : (默认为14)光照等级。
​	├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**collision_box** : 碰撞箱属性。
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_bool.svg?77754" alt='布尔型' title='布尔型' width='20' height='20'>**barrier** : 默认为 `false`, 是否采用屏障碰撞箱。(需要注意的是, 当该选项为 `true` 时, 光照属性将不生效。)
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20'>**scale** : (默认为1)碰撞箱尺寸。
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20'>$\color{red}^*$**offset_x** : (默认为0)碰撞箱底部中心相对方块底部中心在X轴上的偏移。
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20'>$\color{red}^*$**offset_y** : (默认为0)碰撞箱底部中心相对方块底部中心在Y轴上的偏移。
​	│    └─ <img src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20'>$\color{red}^*$**offset_z** : (默认为0)碰撞箱底部中心相对方块底部中心在Z轴上的偏移。
​	├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**interaction_box** : 交互箱属性。
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_float.svg?ae55e" alt='单精度浮点数' title='单精度浮点数' width='20' height='20'>$\color{red}^*$**height** : (默认为1)交互箱的高度。
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_float.svg?ae55e" alt='单精度浮点数' title='单精度浮点数' width='20' height='20'>$\color{red}^*$**width** : (默认为1)交互箱的宽度。
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20'>$\color{red}^*$**offset_x** : (默认为0)交互箱底部中心相对方块底部中心在X轴上的偏移。
​	│    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20'>$\color{red}^*$**offset_y** : (默认为0)交互箱底部中心相对方块底部中心在Y轴上的偏移。
​	│    └─ <img src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20'>$\color{red}^*$**offset_z** : (默认为0)交互箱底部中心相对方块底部中心在Z轴上的偏移。
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

- 需要注意的是, `hang` 模型的生成原点并不是紧贴墙面的, 而是离墙面有 `0.03125` 的距离.

- 关于 `link` 式模型状态映射的code键, 顺序满足 `[上,西北,北,东北,西,东,西南,南,东南,下]`, 即 :

  ```
  "code":
  [   ↑,
  NW, N,NE,
   W,    E,
  SW, S,SE,
      ↓],
  ```

  当数字为1时, 表示目标位置需要有标记tag的模型实体, 为0时则不能有, 若为-1,则该位置随意。

  更新范围如图所示 :

  <img src="C:\Users\Qbai\AppData\Roaming\Typora\typora-user-images\image-20250823002605027.png" alt="image-20250823002605027" style="zoom:50%;" />

### 存储数据

#### Scoreboard

计分板依赖。

**`NatureCraft.var`** : 传参、运算用计分板。

**`NatureCraft.uid`** : 一个递增序列uid计分板, 每组模型都会分配一个独立的值用于绑定交互

#### Storage

使用storage存储模型数据以便玩家在游戏内动态构建自定义模型。

- **模型数据**

  <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'> **<*模型ID*>**
  ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>$\color{red}^*$**template** : 模型调用的模板属性。解析为`<命令存储> template.<路径>`
  │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>$\color{red}^*$**name** : 命令存储命名空间ID。
  │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>$\color{red}^*$**nbt** : 一个[NBT路径](https://zh.minecraft.wiki/w/NBT路径?variant=zh-cn)。
  └─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**model** : 模型属性。
  =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**model** : 模型属性。在生成后**继承**于预加载 marker。变体独立存储的模型在注册时根据需要填入该字段。
  =    │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**name** : 命令存储命名空间ID。
  =    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**nbt** : 一个[NBT路径](https://zh.minecraft.wiki/w/NBT路径?variant=zh-cn)。
  =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_list.svg?d6aa9" alt='NBT列表/JSON数组' title='NBT列表/JSON数组' width='20' height='20'>**Tags** : 添加给 Marker 实体的额外标签。(仅生成模型时读取)
  =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**type** : 模型类型, 默认为`none`(默认), 其他可选值 : `hang`(悬挂), `link`(连接), `predicate`(谓词)。
  =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_list.svg?d6aa9" alt='NBT列表/JSON数组' title='NBT列表/JSON数组' width='20' height='20'>**states** : 与方块状态类似的, 用于定义不同情况下采用的模型映射规则。
  =    │    │ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**type** 为 `hang` 时:
  =    │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'> : 一个状态映射。
  =    │    │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**model** : 递归标签。包含模型, 光照, 碰撞箱与交互箱属性。
  =    │    │    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_any.svg?d406c" alt='任意类型' title='任意类型' width='20' height='20'>**<*模型属性标签*>** : 一个模型属性。
  =    │    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**facing** : (0≤值≤5) 匹配一个模型附着面。
  =    │    │ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**type** 为 `link` 时: (Marker 会被添加一个 `NatureCraft.link` 的标签, 用于接受状态更新)
  =    │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'> : 一个状态映射。
  =    │    │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**model** : 递归标签。包含模型, 光照, 碰撞箱与交互箱属性。
  =    │    │    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_any.svg?d406c" alt='任意类型' title='任意类型' width='20' height='20'>**<*模型属性标签*>** : 一个模型属性。
  =    │    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**condition** : 一个条件。
  =    │    │    =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_list.svg?d6aa9" alt='NBT列表/JSON数组' title='NBT列表/JSON数组' width='20' height='20'>**code** : 一个10位布尔型数组, 用来描述临近10个位置满足的条件状态。
  =    │    │    =    └─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**tag** : 要检查的位置上的模型标签。
  =    │    │ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**type** 为 `predicate` 时:
  =    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'> : 一个状态映射。
  =    │    =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**model** : 递归标签。包含模型, 光照, 碰撞箱与交互箱属性。
  =    │    =    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_any.svg?d406c" alt='任意类型' title='任意类型' width='20' height='20'>**<*模型属性标签*>** : 一个模型属性。
  =    │    =    └─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**predicate** : 一个谓词(支持内联定义)。
  =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'><img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'><img src="https://zh.minecraft.wiki/images/Data_node_list.svg?d6aa9" alt='NBT列表/JSON数组' title='NBT列表/JSON数组' width='20' height='20'>**litem_name** : ([文本组件](https://zh.minecraft.wiki/w/文本组件)) 模型名称。
  =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_bool.svg?77754" alt='布尔型' title='布尔型' width='20' height='20'>**towards** : 默认为 `true`。模型是否有朝向性, 即根据玩家放置视角决定水平朝向(NSWE), 在非默认类型下启用该选项可能会出错。
  =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**display** : 外观数据。
  =    │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>**item_model** : 一个[物品模型映射](https://zh.minecraft.wiki/w/物品模型映射), 决定物品状态下使用的模型。若不存在则与 <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>$\color{red}^*$**model** 保持一致。
  =    │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>$\color{red}^*$**model** : 一个[物品模型映射](https://zh.minecraft.wiki/w/物品模型映射)。
  =    │    ├─ <img  src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20' /> **common** : 展示实体渲染变换属性。
  =    │    │    └─ <img  src="https://zh.minecraft.wiki/images/Data_node_any.svg?d406c" alt='任意类型' title='任意类型' width='20' height='20' />**<*物品展示实体标签*>** (详见[展示实体 - 中文 Minecraft Wiki](https://zh.minecraft.wiki/w/展示实体))
  =    │    └─ <img  src="https://zh.minecraft.wiki/images/Data_node_list.svg?d6aa9" alt='NBT列表/JSON数组' title='NBT列表/JSON数组' width='20' height='20' />**submodels** : 子模型数据。
  =    │    =    └─ <img  src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20' /> : 一个子模型定义。
  =    │    =    =    ├─ <img  src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20' />**model** : 一个[物品模型映射](https://zh.minecraft.wiki/w/物品模型映射)。
  =    │    =    =    └─ <img  src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20' /> **common** : 展示实体渲染变换属性。
  =    ├─ <img  src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20' />**ride** : 骑乘属性。
  =    │    └─ <img  src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20' />$\color{red}^*$**height** : 骑乘高度。
  =    ├─ <img  src="https://zh.minecraft.wiki/images/Data_node_int.svg?8d24f" alt='整形' title='整型' width='20' height='20' />**light_level** : 光照等级。
  =    ├─ <img  src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20' />**collision_box** : 碰撞箱属性。
  =    │    ├─ <img  src="https://zh.minecraft.wiki/images/Data_node_bool.svg?77754" alt='布尔型' title='布尔型' width='20' height='20' />**barrier** : 默认为 `false`, 是否采用屏障碰撞箱。(需要注意的是, 当该选项为 `true` 时, 光照属性将不生效。)
  =    │    ├─ <img  src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20' />**scale** : (默认为1)碰撞箱尺寸。
  =    │    ├─ <img  src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20' />$\color{red}^*$**offset_x** : (默认为0)碰撞箱底部中心相对方块底部中心在X轴上的偏移。
  =    │    ├─ <img  src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20' />$\color{red}^*$**offset_y** : (默认为0)碰撞箱底部中心相对方块底部中心在Y轴上的偏移。
  =    │    └─ <img  src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20' />$\color{red}^*$**offset_z** : (默认为0)碰撞箱底部中心相对方块底部中心在Z轴上的偏移。
  =    ├─ <img  src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20' />**interaction_box** : 交互箱属性。
  =    │    ├─ <img  src="https://zh.minecraft.wiki/images/Data_node_float.svg?ae55e" alt='单精度浮点数' title='单精度浮点数' width='20' height='20' />$\color{red}^*$**height** : (默认为1)交互箱的高度。
  =    │    ├─ <img  src="https://zh.minecraft.wiki/images/Data_node_float.svg?ae55e" alt='单精度浮点数' title='单精度浮点数' width='20' height='20' />$\color{red}^*$**width** : (默认为1)交互箱的宽度。
  =    │    ├─ <img  src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20' />$\color{red}^*$**offset_x** : (默认为0)交互箱底部中心相对方块底部中心在X轴上的偏移。
  =    │    ├─ <img  src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20' />$\color{red}^*$**offset_y** : (默认为0)交互箱底部中心相对方块底部中心在Y轴上的偏移。
  =    │    ├─ <img  src="https://zh.minecraft.wiki/images/Data_node_double.svg?14320" alt='双精度浮点数' title='双精度浮点数' width='20' height='20' />$\color{red}^*$**offset_z** : (默认为0)交互箱底部中心相对方块底部中心在Z轴上的偏移。
  =    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_bool.svg?77754" alt='布尔型' title='布尔型' width='20' height='20'>**response** : (默认为`false`)玩家交互时是否挥动手臂。
  =    └─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**event** : 交互事件。
  =    =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**place** : 放置事件。
  =    =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**random** : 随机刻事件。
  =    =    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>**clock** : 时钟事件(周期事件)。
  =    =    │    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_any.svg?d406c" alt='任意类型' title='任意类型' width='20' height='20'>**<*事件通用参数*>** : 一个事件通用参数(`name` & `path`)。
  =    =    │    └─ <img src="https://zh.minecraft.wiki/images/Data_node_int.svg?8d24f" alt='整形' title='整型' width='20' height='20'>**time** : 时钟周期, 以 `tick`为单位。
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
​	└─ <img src="https://zh.minecraft.wiki/images/Data_node_structure.svg?3a597" alt='NBT复合标签/JSON对象' title='NBT复合标签/JSON对象' width='20' height='20'>$\color{red}^*$**model** : 模型属性。解析为`<命名空间> model.<路径>`
​	=    ├─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>$\color{red}^*$**name** : 命令存储命名空间ID。
​	=    └─ <img src="https://zh.minecraft.wiki/images/Data_node_string.svg?42545" alt='字符串' title='字符串' width='20' height='20'>$\color{red}^*$**nbt** : 一个[NBT路径](https://zh.minecraft.wiki/w/NBT路径?variant=zh-cn)。

数据包内置 `give` 函数, 可通过 `function naturecraft:give` 调用, 其语法为 :

```mcfunction
function naturecraft:give {name:"<存储模型数据的命名空间ID>","nbt":"<模型存储的nbt路径>",model:"<一个物品模型映射>",count:<数量>,type:<none(0)|hang(1)>}
```

如 : 

## 模型

根据模型的功能, 为其分配不同的实体作为构成元素, 使用自增id作为绑定依据(NatureCraft.uid)

碰撞箱shulker骑乘于一个大小为0的交互实体

需要注意的是, 模型的交互箱与碰撞箱仅支持平移变换, 不支持旋转变换。光照只接受值变换。

### 特殊功能

- **复合模型**

  > 由于Blockbench不支持双轴旋转, 在模型表现上有所欠缺, 为了解决这个问题, 本包采用了混合模型的方法。通过将原模型拆分成子模块, 借助展示实体渲染变换, 使其整体拼装为一个整体。


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

- 模型类型为 `link` (连接模型) 时模型 Marker 实体会携带 `NatureCraft.link` 标签;

- Marker 实体是事件函数调用时传递的执行实体**(@s)**;

- Marker 实体骑乘于 Item_display**(root)**;

- Item_display**(sub)** 实体是混合模型调用的补充实体, 骑乘于 Item_display**(root)**, 需要注意的是 <img src="https://zh.minecraft.wiki/images/Data_node_list.svg?d6aa9" alt='NBT列表/JSON数组' title='NBT列表/JSON数组' width='20' height='20'>**left_rotation** 已被占用, 若需在事件中调用, 请使用 <img src="https://zh.minecraft.wiki/images/Data_node_list.svg?d6aa9" alt='NBT列表/JSON数组' title='NBT列表/JSON数组' width='20' height='20'>**right_rotation** 属性进行旋转变换;

- `NatureCraft.target` 为事件标签, 在事件结束后自动清除;

- Player 在玩家与 Interaction**(main)** 交互时传递, 数据包会自动将 attack 目标传递到 interaction, 统一使用

  ```mcfunction
  execute as @n[type=minecraft:interaction,tag=NatureCraft.interaction_box,tag=NatureCraft.target] on target ...
  ```
  
  调用。
  
  > 25/10/9: 现在放置模型时也能通过以下格式索引到玩家了, 或使用 `@a[tag=NatureCraft.target,sort=nearest,limit=1]` 进行索引。
  
- 事件中调用以下函数可在执行位置发出一次 `link` 模型状态更新。

  ```mcfunction
  execute align xyz run function naturecraft:place/init/states/link/0
  ```
  
- 玩家在结构中存储的模型调用需包含 `NatureCraft.natural` 识别标签 (用于自然生成)。

- 

### 位置

事件位置默认在 Marker 实体位置, 位于放置方块中心

### 参数

在部分事件中, 如战利品生成(loot_table), 粒子属性(particle)等需要传入一些静态参量, 在一次事件中数据包会将从Marker中取得的参数传递到**命令存储**`naturecraft:main` 的 `const` 键中, 直接调用的函数会用默认传入宏, 后续跨文件调用可使用 `with storage naturecraft:main const` 传入。

### 更多

- **物品存储空间**

  展示实体提供一个物品数据, 可结合 `minecraft:container` 组件来模拟一个 255 容量上限的物品空间。统一起见建议使用根展示实体 `NatureCraft.root`。
  
- **简单参数创建于传递**

  数据包声明了一个计分板 `NatureCraft.var` 用于处理传参与运算, 结合虚拟实体 `#<CustomName>` 进行简单的数据处理操作。

### ⭐内置事件

- **kill**

  **参数**: (无)

  **效果**: 清除带有 `target` 标签的实体, 特别的, 带有 `self` 标签的目标不会被清除.

  **调用**: `{name:"naturecraft",path:"base/kill"} | function naturecraft:data/event/base/kill`

## 更新 

- 完成了附着类模型的放置逻辑;
- 添加了复合模型来绕过Java模型只能单轴旋转的问题~~但功能不完善, 目前仅适用于静态~~;
- 添加了连接模型的状态更新功能;
- 添加了时钟事件与随机刻事件~~随机刻事件性能堪忧, 等待优化QWQ~~;
- 添加了新的碰撞箱类型 `barrier`;
- 添加了状态条事件 `naturecraft:data/event/base/statusbar/0`, 可以在其它事件中调用该事件来在模型的 y 轴方向渲染一个状态条；
- 添加了新的破坏事件 `naturecraft:data/event/base/group/break3` 用于多次受击确认(防止模型被误触破坏), 可搭配状态条事件使用；
- 添加了新的破坏事件 `naturecraft:data/event/base/group/break2` 用于按战利品表生成掉落物的破坏事件;
- 现在可以在自定义结构中调用模型生成了, 只需在 **Marker** or **Item frame** 上添加 `NatureCraft.natural` 标签用于识别;
- 现在模型实体可以继承`custom_model_data`(通过在物品的`custom_data`组件中加入`custom_model_data`字段);
- 现在模型实体可以继承`item_name`(注册函数中的`item_name`字段), 用于兼容模组 `Jade🔍` 对展示实体名称的显示;
- 添加了`add_custom_model_data`事件, 可以通过调用该事件向掉落物传递`custom_model_data`组件, 使用该事件时应在`naturecraft:main`命令存储下的`io.stack`压入一个栈元素用来存储物品数据;
- 将物品展示实体的基底物品从`chest`更改为`paper`(仍可调用`container`组件)以支持透明贴图.
- 添加了 `consume` 物品修饰器用于将物品堆叠数量 -1;
- 添加了 `single` 物品修饰器用于将物品堆叠数量设置为 1;
- 为 `kill` 事件添加了对携带 `self` 标签的实体的特判;

### 待办

- 游戏内模型注册;
- `states` 的谓词映射~~是的, 谓词映射是待办项~~
- 模型堆叠(类海泡菜);
- GUI模型管理;
- 更多内置事件;
- 实体碰撞箱动态更新；
- 添加 `slime` 类型交互箱兼实体碰撞箱, 用于受击监听；
- 移动事件中需保证移动后的骑乘关系不发生变化;

### 优化

- 调整了模型放置阶段的数据调用, 现在会检查storage data而不是entity data;

### BUG修复

- 修复了通用模型放置在不完整表面吞方块的BUG~~悬挂模型的还没修~~;
- 修复了 `NatureCraft.data` 未骑乘于 `NatureCraft.root` 的BUG;
- 修复了由于修复吞方块BUG导致的无朝向模型随机转向的BUG;
- 修复了由于更改数据取调地址但更改不完全导致的BUG;
- 修复了结构生成时uid混乱的BUG;

---

**更新日期**: 2026/01/04.
