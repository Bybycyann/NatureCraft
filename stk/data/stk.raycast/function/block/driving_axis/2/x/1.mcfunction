data modify storage stk:io push.s[0] set value 1
execute store result storage stk:io push.|dPos|[0] int 1 run data get storage stk:io stack[-1].dPos[0]