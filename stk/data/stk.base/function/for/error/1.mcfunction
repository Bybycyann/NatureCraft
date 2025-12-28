# print 缺少参数
tellraw @a [{"translate":"","fallback":"STK %s",with:[{"text":"Error: 需要提供参数 'condition' 或 'cycle' 中的一个",color:"red"}],hover_event:{action:"show_text",value:"#stk.base:for"},color:"aqua"}]

# [栈弹出]
data remove storage stk:io stack[-1]