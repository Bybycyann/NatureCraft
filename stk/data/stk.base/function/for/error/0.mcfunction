# print 参数同时存在
tellraw @a [{"translate":"","fallback":"STK %s",with:[{"text":"Error: 不能同时指定 'condition' 和 'cycle'",color:"red"}],hover_event:{action:"show_text",value:"#stk.base:for"},color:"aqua"}]

# [栈弹出]
data remove storage stk:io stack[-1]